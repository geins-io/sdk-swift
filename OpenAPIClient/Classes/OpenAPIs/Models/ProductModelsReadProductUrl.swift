//
// ProductModelsReadProductUrl.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A canonical product url for a specific market and language. */
public struct ProductModelsReadProductUrl: Codable, JSONEncodable, Hashable {

    /** The canonical url to the product. */
    public var url: String?
    /** The market of the url. */
    public var market: Int?
    /** The language code of the url. */
    public var language: String?

    public init(url: String? = nil, market: Int? = nil, language: String? = nil) {
        self.url = url
        self.market = market
        self.language = language
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url = "Url"
        case market = "Market"
        case language = "Language"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(market, forKey: .market)
        try container.encodeIfPresent(language, forKey: .language)
    }
}
