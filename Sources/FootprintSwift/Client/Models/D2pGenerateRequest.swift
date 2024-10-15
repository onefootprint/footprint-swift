//
// D2pGenerateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct D2pGenerateRequest: Codable, JSONEncodable, Hashable {

    public var meta: D2pGenerateRequestMeta?

    public init(meta: D2pGenerateRequestMeta? = nil) {
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(meta, forKey: .meta)
    }
}

