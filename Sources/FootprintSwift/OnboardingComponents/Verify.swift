import Foundation


public struct Verify {
    public var requirements: RequirementAttributes?
    public var validationToken: String
    public var vaultData: Vaultprops?
    
    public init(requirements:RequirementAttributes?, validationToken: String, vaultData: Vaultprops? ) {
        self.requirements = requirements
        self.validationToken = validationToken
        self.vaultData = vaultData
    }
}
