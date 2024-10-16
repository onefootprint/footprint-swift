//
// DeviceAttestationChallengeResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DeviceAttestationChallengeResponse: Codable, JSONEncodable, Hashable {

    /** attestation challenge to use */
    public var attestationChallenge: String
    /** state token to send back along with attestation */
    public var state: String

    public init(attestationChallenge: String, state: String) {
        self.attestationChallenge = attestationChallenge
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attestationChallenge = "attestation_challenge"
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(attestationChallenge, forKey: .attestationChallenge)
        try container.encode(state, forKey: .state)
    }
}

