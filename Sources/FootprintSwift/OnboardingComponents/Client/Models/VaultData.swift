//
// VaultData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VaultData: Codable, JSONEncodable, Hashable {

    public enum InvestorProfileEmploymentStatus: String, Codable, CaseIterable {
        case employed = "employed"
        case unemployed = "unemployed"
        case student = "student"
        case retired = "retired"
    }
    public enum InvestorProfileAnnualIncome: String, Codable, CaseIterable {
        case le25k = "le25k"
        case gt25kLe50k = "gt25k_le50k"
        case gt50kLe100k = "gt50k_le100k"
        case gt100kLe200k = "gt100k_le200k"
        case gt200kLe300k = "gt200k_le300k"
        case gt300kLe500k = "gt300k_le500k"
        case gt500kLe1200k = "gt500k_le1200k"
    }
    public enum InvestorProfileNetWorth: String, Codable, CaseIterable {
        case le50k = "le50k"
        case gt50kLe100k = "gt50k_le100k"
        case gt100kLe200k = "gt100k_le200k"
        case gt200kLe500k = "gt200k_le500k"
        case gt500kLe1m = "gt500k_le1m"
        case gt1mLe5m = "gt1m_le5m"
        case gt5m = "gt5m"
    }
    public enum InvestorProfileFundingSources: String, Codable, CaseIterable {
        case employmentIncome = "employment_income"
        case investments = "investments"
        case inheritance = "inheritance"
        case businessIncome = "business_income"
        case savings = "savings"
        case family = "family"
    }
    public enum InvestorProfileInvestmentGoals: String, Codable, CaseIterable {
        case growth = "growth"
        case income = "income"
        case preserveCapital = "preserve_capital"
        case speculation = "speculation"
        case diversification = "diversification"
        case other = "other"
    }
    public enum InvestorProfileRiskTolerance: String, Codable, CaseIterable {
        case conservative = "conservative"
        case moderate = "moderate"
        case aggressive = "aggressive"
    }
    public enum InvestorProfileDeclarations: String, Codable, CaseIterable {
        case affiliatedWithUsBroker = "affiliated_with_us_broker"
        case seniorExecutive = "senior_executive"
        case seniorPoliticalFigure = "senior_political_figure"
    }
    static let idCountryRule = StringRule(minLength: 2, maxLength: 2, pattern: nil)
    static let idNationalityRule = StringRule(minLength: 2, maxLength: 2, pattern: nil)
    public var idAddressLine1: String?
    public var idAddressLine2: String?
    /** Array of 2 letter country codes */
    public var idCitizenships: [String]?
    public var idCity: String?
    /** 2 letter country code */
    public var idCountry: String?
    public var idDob: String?
    public var idDriversLicenseNumber: String?
    public var idDriversLicenseState: String?
    public var idEmail: String?
    public var idFirstName: String?
    public var idItin: String?
    public var idLastName: String?
    public var idMiddleName: String?
    /** 2 letter country code */
    public var idNationality: String?
    public var idPhoneNumber: String?
    public var idSsn4: String?
    public var idSsn9: String?
    public var idState: String?
    public var idUsLegalStatus: String?
    public var idUsTaxId: String?
    public var idVisaExpirationDate: String?
    public var idVisaKind: String?
    public var idZip: String?
    public var investorProfileEmploymentStatus: InvestorProfileEmploymentStatus?
    public var investorProfileOccupation: String?
    public var investorProfileEmployer: String?
    public var investorProfileAnnualIncome: InvestorProfileAnnualIncome?
    public var investorProfileNetWorth: InvestorProfileNetWorth?
    public var investorProfileFundingSources: InvestorProfileFundingSources?
    public var investorProfileInvestmentGoals: [InvestorProfileInvestmentGoals]?
    public var investorProfileRiskTolerance: InvestorProfileRiskTolerance?
    public var investorProfileDeclarations: [InvestorProfileDeclarations]?
    public var investorProfileSeniorExecutiveSymbols: [String]?
    public var investorProfileFamilyMemberNames: [String]?
    public var investorProfilePoliticalOrganization: String?
    public var investorProfileBrokerageFirmEmployer: String?

    public init(idAddressLine1: String? = nil, idAddressLine2: String? = nil, idCitizenships: [String]? = nil, idCity: String? = nil, idCountry: String? = nil, idDob: String? = nil, idDriversLicenseNumber: String? = nil, idDriversLicenseState: String? = nil, idEmail: String? = nil, idFirstName: String? = nil, idItin: String? = nil, idLastName: String? = nil, idMiddleName: String? = nil, idNationality: String? = nil, idPhoneNumber: String? = nil, idSsn4: String? = nil, idSsn9: String? = nil, idState: String? = nil, idUsLegalStatus: String? = nil, idUsTaxId: String? = nil, idVisaExpirationDate: String? = nil, idVisaKind: String? = nil, idZip: String? = nil, investorProfileEmploymentStatus: InvestorProfileEmploymentStatus? = nil, investorProfileOccupation: String? = nil, investorProfileEmployer: String? = nil, investorProfileAnnualIncome: InvestorProfileAnnualIncome? = nil, investorProfileNetWorth: InvestorProfileNetWorth? = nil, investorProfileFundingSources: InvestorProfileFundingSources? = nil, investorProfileInvestmentGoals: [InvestorProfileInvestmentGoals]? = nil, investorProfileRiskTolerance: InvestorProfileRiskTolerance? = nil, investorProfileDeclarations: [InvestorProfileDeclarations]? = nil, investorProfileSeniorExecutiveSymbols: [String]? = nil, investorProfileFamilyMemberNames: [String]? = nil, investorProfilePoliticalOrganization: String? = nil, investorProfileBrokerageFirmEmployer: String? = nil) {
        self.idAddressLine1 = idAddressLine1
        self.idAddressLine2 = idAddressLine2
        self.idCitizenships = idCitizenships
        self.idCity = idCity
        self.idCountry = idCountry
        self.idDob = idDob
        self.idDriversLicenseNumber = idDriversLicenseNumber
        self.idDriversLicenseState = idDriversLicenseState
        self.idEmail = idEmail
        self.idFirstName = idFirstName
        self.idItin = idItin
        self.idLastName = idLastName
        self.idMiddleName = idMiddleName
        self.idNationality = idNationality
        self.idPhoneNumber = idPhoneNumber
        self.idSsn4 = idSsn4
        self.idSsn9 = idSsn9
        self.idState = idState
        self.idUsLegalStatus = idUsLegalStatus
        self.idUsTaxId = idUsTaxId
        self.idVisaExpirationDate = idVisaExpirationDate
        self.idVisaKind = idVisaKind
        self.idZip = idZip
        self.investorProfileEmploymentStatus = investorProfileEmploymentStatus
        self.investorProfileOccupation = investorProfileOccupation
        self.investorProfileEmployer = investorProfileEmployer
        self.investorProfileAnnualIncome = investorProfileAnnualIncome
        self.investorProfileNetWorth = investorProfileNetWorth
        self.investorProfileFundingSources = investorProfileFundingSources
        self.investorProfileInvestmentGoals = investorProfileInvestmentGoals
        self.investorProfileRiskTolerance = investorProfileRiskTolerance
        self.investorProfileDeclarations = investorProfileDeclarations
        self.investorProfileSeniorExecutiveSymbols = investorProfileSeniorExecutiveSymbols
        self.investorProfileFamilyMemberNames = investorProfileFamilyMemberNames
        self.investorProfilePoliticalOrganization = investorProfilePoliticalOrganization
        self.investorProfileBrokerageFirmEmployer = investorProfileBrokerageFirmEmployer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case idAddressLine1 = "id.address_line1"
        case idAddressLine2 = "id.address_line2"
        case idCitizenships = "id.citizenships"
        case idCity = "id.city"
        case idCountry = "id.country"
        case idDob = "id.dob"
        case idDriversLicenseNumber = "id.drivers_license_number"
        case idDriversLicenseState = "id.drivers_license_state"
        case idEmail = "id.email"
        case idFirstName = "id.first_name"
        case idItin = "id.itin"
        case idLastName = "id.last_name"
        case idMiddleName = "id.middle_name"
        case idNationality = "id.nationality"
        case idPhoneNumber = "id.phone_number"
        case idSsn4 = "id.ssn4"
        case idSsn9 = "id.ssn9"
        case idState = "id.state"
        case idUsLegalStatus = "id.us_legal_status"
        case idUsTaxId = "id.us_tax_id"
        case idVisaExpirationDate = "id.visa_expiration_date"
        case idVisaKind = "id.visa_kind"
        case idZip = "id.zip"
        case investorProfileEmploymentStatus = "investor_profile.employment_status"
        case investorProfileOccupation = "investor_profile.occupation"
        case investorProfileEmployer = "investor_profile.employer"
        case investorProfileAnnualIncome = "investor_profile.annual_income"
        case investorProfileNetWorth = "investor_profile.net_worth"
        case investorProfileFundingSources = "investor_profile.funding_sources"
        case investorProfileInvestmentGoals = "investor_profile.investment_goals"
        case investorProfileRiskTolerance = "investor_profile.risk_tolerance"
        case investorProfileDeclarations = "investor_profile.declarations"
        case investorProfileSeniorExecutiveSymbols = "investor_profile.senior_executive_symbols"
        case investorProfileFamilyMemberNames = "investor_profile.family_member_names"
        case investorProfilePoliticalOrganization = "investor_profile.political_organization"
        case investorProfileBrokerageFirmEmployer = "investor_profile.brokerage_firm_employer"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(idAddressLine1, forKey: .idAddressLine1)
        try container.encodeIfPresent(idAddressLine2, forKey: .idAddressLine2)
        try container.encodeIfPresent(idCitizenships, forKey: .idCitizenships)
        try container.encodeIfPresent(idCity, forKey: .idCity)
        try container.encodeIfPresent(idCountry, forKey: .idCountry)
        try container.encodeIfPresent(idDob, forKey: .idDob)
        try container.encodeIfPresent(idDriversLicenseNumber, forKey: .idDriversLicenseNumber)
        try container.encodeIfPresent(idDriversLicenseState, forKey: .idDriversLicenseState)
        try container.encodeIfPresent(idEmail, forKey: .idEmail)
        try container.encodeIfPresent(idFirstName, forKey: .idFirstName)
        try container.encodeIfPresent(idItin, forKey: .idItin)
        try container.encodeIfPresent(idLastName, forKey: .idLastName)
        try container.encodeIfPresent(idMiddleName, forKey: .idMiddleName)
        try container.encodeIfPresent(idNationality, forKey: .idNationality)
        try container.encodeIfPresent(idPhoneNumber, forKey: .idPhoneNumber)
        try container.encodeIfPresent(idSsn4, forKey: .idSsn4)
        try container.encodeIfPresent(idSsn9, forKey: .idSsn9)
        try container.encodeIfPresent(idState, forKey: .idState)
        try container.encodeIfPresent(idUsLegalStatus, forKey: .idUsLegalStatus)
        try container.encodeIfPresent(idUsTaxId, forKey: .idUsTaxId)
        try container.encodeIfPresent(idVisaExpirationDate, forKey: .idVisaExpirationDate)
        try container.encodeIfPresent(idVisaKind, forKey: .idVisaKind)
        try container.encodeIfPresent(idZip, forKey: .idZip)
        try container.encodeIfPresent(investorProfileEmploymentStatus, forKey: .investorProfileEmploymentStatus)
        try container.encodeIfPresent(investorProfileOccupation, forKey: .investorProfileOccupation)
        try container.encodeIfPresent(investorProfileEmployer, forKey: .investorProfileEmployer)
        try container.encodeIfPresent(investorProfileAnnualIncome, forKey: .investorProfileAnnualIncome)
        try container.encodeIfPresent(investorProfileNetWorth, forKey: .investorProfileNetWorth)
        try container.encodeIfPresent(investorProfileFundingSources, forKey: .investorProfileFundingSources)
        try container.encodeIfPresent(investorProfileInvestmentGoals, forKey: .investorProfileInvestmentGoals)
        try container.encodeIfPresent(investorProfileRiskTolerance, forKey: .investorProfileRiskTolerance)
        try container.encodeIfPresent(investorProfileDeclarations, forKey: .investorProfileDeclarations)
        try container.encodeIfPresent(investorProfileSeniorExecutiveSymbols, forKey: .investorProfileSeniorExecutiveSymbols)
        try container.encodeIfPresent(investorProfileFamilyMemberNames, forKey: .investorProfileFamilyMemberNames)
        try container.encodeIfPresent(investorProfilePoliticalOrganization, forKey: .investorProfilePoliticalOrganization)
        try container.encodeIfPresent(investorProfileBrokerageFirmEmployer, forKey: .investorProfileBrokerageFirmEmployer)
    }
}
