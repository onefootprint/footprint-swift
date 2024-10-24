//
// OnboardingResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct OnboardingResponse: Codable, JSONEncodable, Hashable {

    public var authToken: String
    public var onboardingConfig: GetSdkArgsTokenResponseObConfig

    public init(authToken: String, onboardingConfig: GetSdkArgsTokenResponseObConfig) {
        self.authToken = authToken
        self.onboardingConfig = onboardingConfig
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authToken = "auth_token"
        case onboardingConfig = "onboarding_config"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(authToken, forKey: .authToken)
        try container.encode(onboardingConfig, forKey: .onboardingConfig)
    }
}

