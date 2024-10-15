//
// CreateSdkArgsTokenResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreateSdkArgsTokenResponse: Codable, JSONEncodable, Hashable {

    /** The time at which the token expires */
    public var expiresAt: Date
    /** The short-lived token that gives temporary access to perform operations for this user */
    public var token: String

    public init(expiresAt: Date, token: String) {
        self.expiresAt = expiresAt
        self.token = token
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case expiresAt = "expires_at"
        case token
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(expiresAt, forKey: .expiresAt)
        try container.encode(token, forKey: .token)
    }
}
