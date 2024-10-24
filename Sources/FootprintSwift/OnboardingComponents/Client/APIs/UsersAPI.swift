//
// UsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class UsersAPI {

    /**

     - parameter body: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedUserVaultValidatePost_1(body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await hostedUserVaultValidatePost_1WithRequestBuilder(body: body, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /hosted/user/vault/validate
     - Checks if provided vault data is valid before adding it to the vault
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserOnboardingToken
     - parameter body: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func hostedUserVaultValidatePost_1WithRequestBuilder(body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/hosted/user/vault/validate"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter xFpAuthorization: (header)  
     - parameter body: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func vault_1(xFpAuthorization: String, body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await vault_1WithRequestBuilder(xFpAuthorization: xFpAuthorization, body: body, openAPIClient: openAPIClient).execute().body
    }

    /**
     - PATCH /hosted/user/vault
     - Updates data in a user vault
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserOnboardingToken
     - parameter xFpAuthorization: (header)  
     - parameter body: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func vault_1WithRequestBuilder(xFpAuthorization: String, body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/hosted/user/vault"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "X-Fp-Authorization": xFpAuthorization.encodeToJSON(codableHelper: openAPIClient.codableHelper),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }
}
