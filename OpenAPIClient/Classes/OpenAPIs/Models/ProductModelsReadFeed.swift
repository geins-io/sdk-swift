//
// ProductModelsReadFeed.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A product feed. */
public struct ProductModelsReadFeed: Codable, JSONEncodable, Hashable {

    /** The feed id. */
    public var feedId: Int?
    /** The feed name. */
    public var name: String?
    /** The url to the feed. */
    public var url: String?
    /** The name of the feed layout. */
    public var layout: String?
    /** The market of the feed. */
    public var market: Int?
    /** The language code of the feed. */
    public var language: String?
    /** The default currency for the market */
    public var defaultCurrency: String?
    /** The default country for the market */
    public var defaultCountry: String?

    public init(feedId: Int? = nil, name: String? = nil, url: String? = nil, layout: String? = nil, market: Int? = nil, language: String? = nil, defaultCurrency: String? = nil, defaultCountry: String? = nil) {
        self.feedId = feedId
        self.name = name
        self.url = url
        self.layout = layout
        self.market = market
        self.language = language
        self.defaultCurrency = defaultCurrency
        self.defaultCountry = defaultCountry
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case feedId = "FeedId"
        case name = "Name"
        case url = "Url"
        case layout = "Layout"
        case market = "Market"
        case language = "Language"
        case defaultCurrency = "DefaultCurrency"
        case defaultCountry = "DefaultCountry"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(feedId, forKey: .feedId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(layout, forKey: .layout)
        try container.encodeIfPresent(market, forKey: .market)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)
        try container.encodeIfPresent(defaultCountry, forKey: .defaultCountry)
    }
}

