//
// SdkArgsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SdkArgsAPI {

    /**

     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: GetSdkArgsTokenResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func orgSdkArgsGet(openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> GetSdkArgsTokenResponse {
        return try await orgSdkArgsGetWithRequestBuilder(openAPIClient: openAPIClient).execute().body
    }

    /**
     - GET /org/sdk_args
     - Fetch information from an existing SDK args session.
     - API Key:
       - type: apiKey X-Fp-Sdk-Args-Token (HEADER)
       - name: SDKArgsToken
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<GetSdkArgsTokenResponse> 
     */
    open class func orgSdkArgsGetWithRequestBuilder(openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<GetSdkArgsTokenResponse> {
        let localVariablePath = "/org/sdk_args"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetSdkArgsTokenResponse>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter body: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: CreateSdkArgsTokenResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func orgSdkArgsPost(body: String, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> CreateSdkArgsTokenResponse {
        return try await orgSdkArgsPostWithRequestBuilder(body: body, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /org/sdk_args
     - Create a new session containing args for the SDK.
     - parameter body: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<CreateSdkArgsTokenResponse> 
     */
    open class func orgSdkArgsPostWithRequestBuilder(body: String, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<CreateSdkArgsTokenResponse> {
        let localVariablePath = "/org/sdk_args"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateSdkArgsTokenResponse>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, openAPIClient: openAPIClient)
    }

    /**

     - parameter logBody: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func orgSdkTelemetryPost(logBody: LogBody, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await orgSdkTelemetryPostWithRequestBuilder(logBody: logBody, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /org/sdk_telemetry
     - Log contents of the HTTP body. 
     - parameter logBody: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func orgSdkTelemetryPostWithRequestBuilder(logBody: LogBody, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/org/sdk_telemetry"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: logBody, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, openAPIClient: openAPIClient)
    }
}
