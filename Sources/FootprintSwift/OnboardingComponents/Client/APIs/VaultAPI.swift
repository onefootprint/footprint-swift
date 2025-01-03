//
// VaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class VaultAPI {

    /**

     - parameter xFpAuthorization: (header)  
     - parameter userDecryptRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: VaultData
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func decryptUserVault(xFpAuthorization: String, userDecryptRequest: UserDecryptRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> VaultData {
        return try await decryptUserVaultWithRequestBuilder(xFpAuthorization: xFpAuthorization, userDecryptRequest: userDecryptRequest, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /hosted/user/vault/decrypt
     - Decrypts the specified list of fields from the provided vault.
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserToken
     - parameter xFpAuthorization: (header)  
     - parameter userDecryptRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<VaultData> 
     */
    open class func decryptUserVaultWithRequestBuilder(xFpAuthorization: String, userDecryptRequest: UserDecryptRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<VaultData> {
        let localVariablePath = "/hosted/user/vault/decrypt"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userDecryptRequest, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "X-Fp-Authorization": xFpAuthorization.encodeToJSON(codableHelper: openAPIClient.codableHelper),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VaultData>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter userDecryptRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: BusinessDecryptResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedBusinessVaultDecryptPost(userDecryptRequest: UserDecryptRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> BusinessDecryptResponse {
        return try await hostedBusinessVaultDecryptPostWithRequestBuilder(userDecryptRequest: userDecryptRequest, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /hosted/business/vault/decrypt
     - Decrypts the specified list of fields from the provided vault.
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserToken
     - parameter userDecryptRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<BusinessDecryptResponse> 
     */
    open class func hostedBusinessVaultDecryptPostWithRequestBuilder(userDecryptRequest: UserDecryptRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<BusinessDecryptResponse> {
        let localVariablePath = "/hosted/business/vault/decrypt"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userDecryptRequest, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BusinessDecryptResponse>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter rawBusinessDataRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedBusinessVaultPatch_1(rawBusinessDataRequest: RawBusinessDataRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await hostedBusinessVaultPatch_1WithRequestBuilder(rawBusinessDataRequest: rawBusinessDataRequest, openAPIClient: openAPIClient).execute().body
    }

    /**
     - PATCH /hosted/business/vault
     - Updates data in a business vault. Can be used to update `business.` data
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserOnboardingToken
     - parameter rawBusinessDataRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func hostedBusinessVaultPatch_1WithRequestBuilder(rawBusinessDataRequest: RawBusinessDataRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/hosted/business/vault"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: rawBusinessDataRequest, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter rawBusinessDataRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedBusinessVaultValidatePost_1(rawBusinessDataRequest: RawBusinessDataRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await hostedBusinessVaultValidatePost_1WithRequestBuilder(rawBusinessDataRequest: rawBusinessDataRequest, openAPIClient: openAPIClient).execute().body
    }

    /**
     - POST /hosted/business/vault/validate
     - Checks if provided vault data is valid before adding it to the business vault
     - API Key:
       - type: apiKey X-Fp-Authorization (HEADER)
       - name: UserOnboardingToken
     - parameter rawBusinessDataRequest: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func hostedBusinessVaultValidatePost_1WithRequestBuilder(rawBusinessDataRequest: RawBusinessDataRequest, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/hosted/business/vault/validate"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: rawBusinessDataRequest, codableHelper: openAPIClient.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, openAPIClient: openAPIClient)
    }

    /**

     - parameter body: (body)  
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func hostedUserVaultValidatePost(body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await hostedUserVaultValidatePostWithRequestBuilder(body: body, openAPIClient: openAPIClient).execute().body
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
    open class func hostedUserVaultValidatePostWithRequestBuilder(body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
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
    open class func vault(xFpAuthorization: String, body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) async throws(ErrorResponse) -> JSONValue {
        return try await vaultWithRequestBuilder(xFpAuthorization: xFpAuthorization, body: body, openAPIClient: openAPIClient).execute().body
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
    open class func vaultWithRequestBuilder(xFpAuthorization: String, body: VaultData, openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<JSONValue> {
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
