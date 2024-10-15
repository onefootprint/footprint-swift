import Foundation

public struct Fields {
    public var missing: [VaultDI] = []
    public var optional: [VaultDI] = []
    public var collected: [VaultDI] = []
}

public struct Requirements {
    public var all: [Requirement] = []
    public var isCompleted: Bool = false
    public var isMissing: Bool = false
    public var missing: [Requirement] = []
}

public struct RequirementAttributes {
    public let fields: Fields
    public let requirements: Requirements
    
    public static func getRequirements(from onboardingStatus: OnboardingStatusResponse) -> RequirementAttributes {
        var fields = Fields()
        var requirements = Requirements()
        
        requirements.all = onboardingStatus.allRequirements
        requirements.missing = onboardingStatus.allRequirements.filter {
            switch $0 {
            case .typeAuthorizeRequirement(let authorizeReq):
                return authorizeReq.isMet == false
            case .typeCollectDataRequirement(let dataReq):
                return dataReq.isMet == false
            case .typeCollectInvestorProfileRequirement(let investorReq):
                return investorReq.isMet == false
            case .typeDocumentRequirement(let docReq):
                return docReq.isMet == false
            case .typeProcessRequirement(let processReq):
                return processReq.isMet == false
            case .typeRegisterAuthMethodRequirement(let authMethodReq):
                return authMethodReq.isMet == false
            case .typeRegisterPasskeyRequirement(let passkeyReq):
                return passkeyReq.isMet == false
            }
        }
        requirements.isCompleted = requirements.missing.isEmpty
        requirements.isMissing = !requirements.isCompleted
        
        let collectDataRequirement: CollectDataRequirement? = onboardingStatus.allRequirements.compactMap { requirement in
            if case let .typeCollectDataRequirement(collectDataReq) = requirement {
                return collectDataReq
            }
            return nil
        }.first
        
        if let collectDataRequirement = collectDataRequirement {
            let optionalAttributes = collectDataRequirement.optionalAttributes.flatMap { attribute in
                return CdoToAllDisMap[attribute.rawValue] ?? []
            }
            let populatedAttributes = collectDataRequirement.populatedAttributes.flatMap { attribute in
                return CdoToAllDisMap[attribute.rawValue] ?? []
            }
            let missingAttributes = collectDataRequirement.missingAttributes.flatMap { attribute in
                return CdoToAllDisMap[attribute.rawValue] ?? []
            }
            let filteredMissingAttributes = missingAttributes.filter { attr in
                if attr.rawValue == "id.address_line2" || attr.rawValue == "id.middle_name" {
                    fields.optional.append(attr)
                    return false
                }
                return true
            }
            
            fields.optional.append(contentsOf: optionalAttributes)
            fields.collected.append(contentsOf: populatedAttributes)
            fields.missing.append(contentsOf: filteredMissingAttributes)
        }
        
        return RequirementAttributes(
            fields: fields,
            requirements: requirements
        )
    }
}


let CdoToAllDisMap: [String: [VaultDI]] = [
    CollectedAttributes.name.rawValue: [
        VaultDI(rawValue: Vaultprops.CodingKeys.idFirstName.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idMiddleName.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idLastName.rawValue)!
    ],
    CollectedAttributes.dob.rawValue: [VaultDI(rawValue: Vaultprops.CodingKeys.idDob.rawValue)!],
    CollectedAttributes.ssn4.rawValue: [VaultDI(rawValue: Vaultprops.CodingKeys.idSsn4.rawValue)!],
    CollectedAttributes.ssn9.rawValue: [VaultDI(rawValue: Vaultprops.CodingKeys.idSsn9.rawValue)!],
    CollectedAttributes.usTaxId.rawValue: [VaultDI(rawValue: Vaultprops.CodingKeys.idUsTaxId.rawValue)!],
    CollectedAttributes.fullAddress.rawValue: [
        VaultDI(rawValue: Vaultprops.CodingKeys.idAddressLine1.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idAddressLine2.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idCity.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idState.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idZip.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idCountry.rawValue)!
    ],
    CollectedAttributes.email.rawValue: [VaultDI(rawValue: Vaultprops.CodingKeys.idEmail.rawValue)!],
    CollectedAttributes.phoneNumber.rawValue: [VaultDI(rawValue: Vaultprops.CodingKeys.idPhoneNumber.rawValue)!],
    CollectedAttributes.nationality.rawValue: [VaultDI(rawValue: Vaultprops.CodingKeys.idNationality.rawValue)!],
    CollectedAttributes.usLegalStatus.rawValue: [
        VaultDI(rawValue: Vaultprops.CodingKeys.idUsLegalStatus.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idVisaKind.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idVisaExpirationDate.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idCitizenships.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.idNationality.rawValue)!
    ],
    CollectedAttributes.investorProfile.rawValue: [
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileEmploymentStatus.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileOccupation.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileEmployer.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileAnnualIncome.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileNetWorth.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileInvestmentGoals.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileRiskTolerance.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileDeclarations.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileBrokerageFirmEmployer.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileSeniorExecutiveSymbols.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileFamilyMemberNames.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfilePoliticalOrganization.rawValue)!,
        VaultDI(rawValue: Vaultprops.CodingKeys.investorProfileFundingSources.rawValue)!
    ]
]
