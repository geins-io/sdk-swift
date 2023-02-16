//
// ProductModelsMonitorSku.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductModelsMonitorSku: Codable, JSONEncodable, Hashable {

    public var siteId: Int?
    public var languageCode: String?
    public var email: String?
    public var skuId: Int?

    public init(siteId: Int? = nil, languageCode: String? = nil, email: String? = nil, skuId: Int? = nil) {
        self.siteId = siteId
        self.languageCode = languageCode
        self.email = email
        self.skuId = skuId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case siteId = "SiteId"
        case languageCode = "LanguageCode"
        case email = "Email"
        case skuId = "SkuId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(siteId, forKey: .siteId)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(skuId, forKey: .skuId)
    }
}
