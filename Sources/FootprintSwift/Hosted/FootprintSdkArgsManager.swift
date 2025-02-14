import Foundation

@available(iOS 13.0, *)
public class FootprintSdkArgsManager {
    private var configuration: FootprintConfiguration
    private var logger: FootprintLogger?
    
    init(configuration: FootprintConfiguration, logger: FootprintLogger?) {
        self.configuration = configuration
        self.logger = logger
    }
    
    public func sendArgs() async throws -> String {
        let token = Task { () -> String? in
            do {
                var request = URLRequest(url: URL(string: "\(FootprintSdkMetadata.apiBaseUrl)/org/sdk_args")!)
                request.httpMethod = "POST"
                
                let packageInfo = PackageInfo.getCurrentPackageInfo()
                request.setValue("footprint-swift-\(packageInfo.installationType):\(packageInfo.version ?? "unknown")", forHTTPHeaderField: "x-fp-client-version")
                
                if(self.configuration.sessionId != nil){
                    request.setValue(self.configuration.sessionId, forHTTPHeaderField: "X-Fp-Session-Id")
                }
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                
                let encoder = JSONEncoder()
                encoder.keyEncodingStrategy = .convertToSnakeCase
                let encodedConfiguration = try encoder.encode(self.configuration)
                guard let configurationJSON = try? JSONSerialization.jsonObject(with: encodedConfiguration, options: []) else {
                    self.logger?.logError(error: FootprintHostedError(kind: .httpRequestError, message: "Converting configuration object to JSON failed."))
                    return nil
                }
                let body = try JSONSerialization.data(withJSONObject: [
                    "kind": (configuration.isAuthPlaybook == true) ? FootprintSdkMetadata.kindAuth : FootprintSdkMetadata.kindVerify,
                    "data": configurationJSON
                ])
                request.httpBody = body
                
                guard let (data, _) = try? await URLSession.shared.data(for: request) else {
                    self.logger?.logError(error: FootprintHostedError(kind: .httpRequestError, message: "Encountered network error while saving SDK args."))
                    return nil
                }
                guard let jsonResponse = try JSONSerialization.jsonObject(with: data, options: []) as? [String: String] else {
                    self.logger?.logError(error: FootprintHostedError(kind: .httpRequestError, message: "Received invalid JSON response when saving sdk args."))
                    return nil
                }
                guard let token = jsonResponse["token"] as? String else {
                    self.logger?.logError(error: FootprintHostedError(kind: .httpRequestError, message: "Missing string token from SDK args."))
                    return nil
                }
                return token
            } catch {
                self.logger?.logError(error: FootprintHostedError(kind: .httpRequestError, message: "Encountered error while sending SDK args: \(error)"))
                return nil
            }
        }
        
        guard let tokenValue = try await token.value else {
            throw FootprintHostedError(kind: .httpRequestError, message: "Failed to obtain sdk args token")
        }
        return tokenValue
    }
}
