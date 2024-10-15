//
// D2pSmsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct D2pSmsResponse: Codable, JSONEncodable, Hashable {

    public var timeBeforeRetryS: Int64

    public init(timeBeforeRetryS: Int64) {
        self.timeBeforeRetryS = timeBeforeRetryS
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case timeBeforeRetryS = "time_before_retry_s"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(timeBeforeRetryS, forKey: .timeBeforeRetryS)
    }
}

