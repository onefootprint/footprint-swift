//
// UserChallengeVerifyRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UserChallengeVerifyRequest: Codable, JSONEncodable, Hashable {

    /** The response to the challenge. Either SMS/email PIN code or passkey response */
    public var challengeResponse: String
    /** The token given from initiating the challenge */
    public var challengeToken: String

    public init(challengeResponse: String, challengeToken: String) {
        self.challengeResponse = challengeResponse
        self.challengeToken = challengeToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case challengeResponse = "challenge_response"
        case challengeToken = "challenge_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(challengeResponse, forKey: .challengeResponse)
        try container.encode(challengeToken, forKey: .challengeToken)
    }
}

