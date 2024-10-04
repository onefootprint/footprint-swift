import Foundation

public struct FootprintConfiguration: Encodable {
    public var bootstrapData: FootprintBootstrapData?
    public var publicKey: String?
    public var authToken: String?
    public var scheme: String
    public var onCancel: (() -> Void)?
    public var onComplete: ((_ validationToken: String) -> Void)?
    public var onError: ((_ errorMessage: String) -> Void)?
    public var options: FootprintOptions?
    public var l10n: FootprintL10n?
    public var appearance: FootprintAppearance?
    private var sandboxOutcome: SandboxOutcome?
    public var sandboxId: String?
    public var isComponentsSdk: Bool?

    public init(publicKey: String? = nil,
                authToken: String? = nil,
                sandboxId: String? = nil,
                isComponentsSdk: Bool? = false,
                sandboxOutcome: SandboxOutcome? = nil,
                scheme: String,
                bootstrapData: FootprintBootstrapData? = nil,
                options: FootprintOptions? = nil,
                l10n: FootprintL10n? = nil,
                appearance: FootprintAppearance? = nil,
                onCancel: (() -> Void)? = nil,
                onComplete: ((_ validationToken: String) -> Void)? = nil,
                onError: ((_ errorMessage: String) -> Void)? = nil
    ) {
        precondition(publicKey != nil || authToken != nil, "Either publicKey or authToken must be provided")

        self.publicKey = publicKey
        self.authToken = authToken
        self.scheme = scheme
        self.bootstrapData = bootstrapData
        self.onCancel = onCancel
        self.onComplete = onComplete
        self.onError = onError
        self.options = options
        self.l10n = l10n
        self.appearance = appearance
        self.sandboxOutcome = sandboxOutcome
        self.sandboxId = sandboxId
        self.isComponentsSdk = isComponentsSdk
    }

    // Callbacks and redirectUrl should not be serialized
    private enum CodingKeys: String, CodingKey {
        case publicKey = "public_key"
        case authToken = "auth_token"
        case bootstrapData = "user_data"
        case options = "options"
        case l10n = "l10n"
        case documentFixtureResult = "document_fixture_result"
        case fixtureResult = "fixture_result"
        case sandboxId = "sandbox_id"
        case isComponentsSdk = "is_components_sdk"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.publicKey, forKey: .publicKey)
        try container.encodeIfPresent(self.authToken, forKey: .authToken)
        try container.encodeIfPresent(self.bootstrapData, forKey: .bootstrapData)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.l10n, forKey: .l10n)
        try container.encodeIfPresent(self.sandboxOutcome?.overallOutcome, forKey: .fixtureResult)
        try container.encodeIfPresent(self.sandboxOutcome?.documentOutcome, forKey: .documentFixtureResult)
        try container.encodeIfPresent(self.sandboxId, forKey: .sandboxId)
        try container.encodeIfPresent(self.isComponentsSdk, forKey: .isComponentsSdk)
    }
} 