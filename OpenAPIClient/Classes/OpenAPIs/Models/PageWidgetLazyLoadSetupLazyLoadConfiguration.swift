//
// PageWidgetLazyLoadSetupLazyLoadConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PageWidgetLazyLoadSetupLazyLoadConfiguration: Codable, JSONEncodable, Hashable {

    public var enableLazyloadMobile: Bool?
    public var eagerLoadStepsMobile: Int?
    public var enableLazyloadDesktop: Bool?
    public var eagerLoadStepsDesktop: Int?

    public init(enableLazyloadMobile: Bool? = nil, eagerLoadStepsMobile: Int? = nil, enableLazyloadDesktop: Bool? = nil, eagerLoadStepsDesktop: Int? = nil) {
        self.enableLazyloadMobile = enableLazyloadMobile
        self.eagerLoadStepsMobile = eagerLoadStepsMobile
        self.enableLazyloadDesktop = enableLazyloadDesktop
        self.eagerLoadStepsDesktop = eagerLoadStepsDesktop
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enableLazyloadMobile = "EnableLazyloadMobile"
        case eagerLoadStepsMobile = "EagerLoadStepsMobile"
        case enableLazyloadDesktop = "EnableLazyloadDesktop"
        case eagerLoadStepsDesktop = "EagerLoadStepsDesktop"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enableLazyloadMobile, forKey: .enableLazyloadMobile)
        try container.encodeIfPresent(eagerLoadStepsMobile, forKey: .eagerLoadStepsMobile)
        try container.encodeIfPresent(enableLazyloadDesktop, forKey: .enableLazyloadDesktop)
        try container.encodeIfPresent(eagerLoadStepsDesktop, forKey: .eagerLoadStepsDesktop)
    }
}
