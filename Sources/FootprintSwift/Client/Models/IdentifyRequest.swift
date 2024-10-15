//
// IdentifyRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct IdentifyRequest: Codable, JSONEncodable, Hashable {

    public enum Scope: String, Codable, CaseIterable {
        case my1fp = "my1fp"
        case onboarding = "onboarding"
        case auth = "auth"
    }
    public var email: String?
    /** TODO deprecate */
    public var identifier: String?
    public var phoneNumber: String?
    /** Determines which scopes the issued auth token will have. Request the correct scopes for your  use case in order to get the least permissions required */
    public var scope: Scope

    public init(email: String? = nil, identifier: String? = nil, phoneNumber: String? = nil, scope: Scope) {
        self.email = email
        self.identifier = identifier
        self.phoneNumber = phoneNumber
        self.scope = scope
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case identifier
        case phoneNumber = "phone_number"
        case scope
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(identifier, forKey: .identifier)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encode(scope, forKey: .scope)
    }
}
