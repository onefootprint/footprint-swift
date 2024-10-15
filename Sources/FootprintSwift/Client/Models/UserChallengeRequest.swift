//
// UserChallengeRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UserChallengeRequest: Codable, JSONEncodable, Hashable {

    public enum ActionKind: String, Codable, CaseIterable {
        case replace = "replace"
        case addPrimary = "add_primary"
    }
    public enum Kind: String, Codable, CaseIterable {
        case phone = "phone"
        case passkey = "passkey"
        case email = "email"
    }
    /** Specifies whether to add the new auth method alongside existing auth methods or replace the  existing method. */
    public var actionKind: ActionKind
    /** If the challenge kind is email, the email address to send the challenge to */
    public var email: String?
    /** The kind of auth method for which to initiate a challenge */
    public var kind: Kind
    /** If the challenge kind is SMS, the phone number to send the challenge to */
    public var phoneNumber: String?

    public init(actionKind: ActionKind, email: String? = nil, kind: Kind, phoneNumber: String? = nil) {
        self.actionKind = actionKind
        self.email = email
        self.kind = kind
        self.phoneNumber = phoneNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionKind = "action_kind"
        case email
        case kind
        case phoneNumber = "phone_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(actionKind, forKey: .actionKind)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encode(kind, forKey: .kind)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
    }
}

