//
// HostedBusinessInvited.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Information on the secondary BO that was pre-populated by the primary BO */
public struct HostedBusinessInvited: Codable, JSONEncodable, Hashable {

    public var email: String
    public var phoneNumber: String

    public init(email: String, phoneNumber: String) {
        self.email = email
        self.phoneNumber = phoneNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case phoneNumber = "phone_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encode(phoneNumber, forKey: .phoneNumber)
    }
}

