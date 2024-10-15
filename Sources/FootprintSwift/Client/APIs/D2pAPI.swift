//
// D2pAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class D2pAPI {

    /**

     - parameter d2pGenerateRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: D2pGenerateResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedOnboardingD2pGenerate(d2pGenerateRequest: D2pGenerateRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> D2pGenerateResponse {
        return try await hostedOnboardingD2pGenerateWithRequestBuilder(d2pGenerateRequest: d2pGenerateRequest, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /hosted/onboarding/d2p/generate
     - Generates a new d2p session token for the currently authenticated user. The d2p session token has a limited scope, and also includes some status metadata for syncing state across the phone and desktop.
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserToken
     - parameter d2pGenerateRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<D2pGenerateResponse> 
     */
    open class func hostedOnboardingD2pGenerateWithRequestBuilder(d2pGenerateRequest: D2pGenerateRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<D2pGenerateResponse> {
        let localVariablePath = "/hosted/onboarding/d2p/generate"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: d2pGenerateRequest, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<D2pGenerateResponse>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter d2pSmsRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: D2pSmsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedOnboardingD2pSms(d2pSmsRequest: D2pSmsRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> D2pSmsResponse {
        return try await hostedOnboardingD2pSmsWithRequestBuilder(d2pSmsRequest: d2pSmsRequest, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /hosted/onboarding/d2p/sms
     - Send an SMS with a link to the phone onboarding page.
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserToken
     - parameter d2pSmsRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<D2pSmsResponse> 
     */
    open class func hostedOnboardingD2pSmsWithRequestBuilder(d2pSmsRequest: D2pSmsRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<D2pSmsResponse> {
        let localVariablePath = "/hosted/onboarding/d2p/sms"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: d2pSmsRequest, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<D2pSmsResponse>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: D2pStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedOnboardingD2pStatus(openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> D2pStatusResponse {
        return try await hostedOnboardingD2pStatusWithRequestBuilder(openAPIClient: openAPIClient).execute().body
    }

    /**
     - GET /hosted/onboarding/d2p/status
     - Gets the status of the provided d2p session. Requires the d2p session token as the auth header.
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserToken
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<D2pStatusResponse> 
     */
    open class func hostedOnboardingD2pStatusWithRequestBuilder(openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<D2pStatusResponse> {
        let localVariablePath = "/hosted/onboarding/d2p/status"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<D2pStatusResponse>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter d2pUpdateStatusRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedOnboardingD2pStatusPost(d2pUpdateStatusRequest: D2pUpdateStatusRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await hostedOnboardingD2pStatusPostWithRequestBuilder(d2pUpdateStatusRequest: d2pUpdateStatusRequest, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /hosted/onboarding/d2p/status
     - Update the status of the provided d2p session. Only allows updating to certain statuses.
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserToken
     - parameter d2pUpdateStatusRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func hostedOnboardingD2pStatusPostWithRequestBuilder(d2pUpdateStatusRequest: D2pUpdateStatusRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/hosted/onboarding/d2p/status"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: d2pUpdateStatusRequest, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }
}
