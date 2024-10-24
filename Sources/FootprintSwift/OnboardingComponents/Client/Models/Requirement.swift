//
// Requirement.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum Requirement: Codable, JSONEncodable, Hashable {
    case typeAuthorizeRequirement(AuthorizeRequirement)
    case typeCollectDataRequirement(CollectDataRequirement)
    case typeCollectInvestorProfileRequirement(CollectInvestorProfileRequirement)
    case typeDocumentRequirement(DocumentRequirement)
    case typeProcessRequirement(ProcessRequirement)
    case typeRegisterAuthMethodRequirement(RegisterAuthMethodRequirement)
    case typeRegisterPasskeyRequirement(RegisterPasskeyRequirement)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAuthorizeRequirement(let value):
            try container.encode(value)
        case .typeCollectDataRequirement(let value):
            try container.encode(value)
        case .typeCollectInvestorProfileRequirement(let value):
            try container.encode(value)
        case .typeDocumentRequirement(let value):
            try container.encode(value)
        case .typeProcessRequirement(let value):
            try container.encode(value)
        case .typeRegisterAuthMethodRequirement(let value):
            try container.encode(value)
        case .typeRegisterPasskeyRequirement(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AuthorizeRequirement.self) {
            self = .typeAuthorizeRequirement(value)
        } else if let value = try? container.decode(CollectDataRequirement.self) {
            self = .typeCollectDataRequirement(value)
        } else if let value = try? container.decode(CollectInvestorProfileRequirement.self) {
            self = .typeCollectInvestorProfileRequirement(value)
        } else if let value = try? container.decode(DocumentRequirement.self) {
            self = .typeDocumentRequirement(value)
        } else if let value = try? container.decode(ProcessRequirement.self) {
            self = .typeProcessRequirement(value)
        } else if let value = try? container.decode(RegisterAuthMethodRequirement.self) {
            self = .typeRegisterAuthMethodRequirement(value)
        } else if let value = try? container.decode(RegisterPasskeyRequirement.self) {
            self = .typeRegisterPasskeyRequirement(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of Requirement"))
        }
    }
}

