//
// CollectInvestorProfileRequirement.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CollectInvestorProfileRequirement: Codable, JSONEncodable, Hashable {

    public enum Kind: String, Codable, CaseIterable {
        case investorProfile = "collect_investor_profile"
    }
    public enum MissingAttributes: String, Codable, CaseIterable {
        case investorProfile = "investor_profile"
    }
    public var kind: Kind
    public var isMet: Bool
    public var missingAttributes: [MissingAttributes]

    public init(kind: Kind, isMet: Bool, missingAttributes: [MissingAttributes]) {
        self.kind = kind
        self.isMet = isMet
        self.missingAttributes = missingAttributes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case isMet = "is_met"
        case missingAttributes = "missing_attributes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
        try container.encode(isMet, forKey: .isMet)
        try container.encode(missingAttributes, forKey: .missingAttributes)
    }
}

