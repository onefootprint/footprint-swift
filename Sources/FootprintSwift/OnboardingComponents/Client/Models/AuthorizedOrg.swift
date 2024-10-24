//
// AuthorizedOrg.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AuthorizedOrg: Codable, JSONEncodable, Hashable {

    public enum CanAccessData: String, Codable, CaseIterable {
        case name = "Name"
        case dob = "Dob"
        case ssn4 = "Ssn4"
        case ssn9 = "Ssn9"
        case fullAddress = "FullAddress"
        case email = "Email"
        case phoneNumber = "PhoneNumber"
        case nationality = "Nationality"
        case usLegalStatus = "UsLegalStatus"
        case businessName = "BusinessName"
        case businessTin = "BusinessTin"
        case businessAddress = "BusinessAddress"
        case businessPhoneNumber = "BusinessPhoneNumber"
        case businessWebsite = "BusinessWebsite"
        case businessBeneficialOwners = "BusinessBeneficialOwners"
        case businessKycedBeneficialOwners = "BusinessKycedBeneficialOwners"
        case businessCorporationType = "BusinessCorporationType"
        case investorProfile = "InvestorProfile"
        case card = "Card"
        case usTaxId = "UsTaxId"
        case bank = "Bank"
    }
    public var canAccessData: [CanAccessData]
    public var logoUrl: String?
    public var orgName: String

    public init(canAccessData: [CanAccessData], logoUrl: String? = nil, orgName: String) {
        self.canAccessData = canAccessData
        self.logoUrl = logoUrl
        self.orgName = orgName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case canAccessData = "can_access_data"
        case logoUrl = "logo_url"
        case orgName = "org_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(canAccessData, forKey: .canAccessData)
        try container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        try container.encode(orgName, forKey: .orgName)
    }
}

