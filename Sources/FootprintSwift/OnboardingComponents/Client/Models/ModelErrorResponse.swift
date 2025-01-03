//
// ModelErrorResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ModelErrorResponse: Codable, JSONEncodable, Hashable {

    public var code: String?
    public var debug: String
    public var message: String
    public var supportId: String

    public init(code: String? = nil, debug: String, message: String, supportId: String) {
        self.code = code
        self.debug = debug
        self.message = message
        self.supportId = supportId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case debug
        case message
        case supportId = "support_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encode(debug, forKey: .debug)
        try container.encode(message, forKey: .message)
        try container.encode(supportId, forKey: .supportId)
    }
}

