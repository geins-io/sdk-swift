//
// PriceListModelsPriceList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A price list definition. */
public struct PriceListModelsPriceList: Codable, JSONEncodable, Hashable {

    /** Price list id. */
    public var id: Int?
    /** Price list name. */
    public var name: String?
    /** Market id. */
    public var marketId: Int?
    /** Market prefix.  <example>Eg: SE</example> */
    public var marketPrefix: String?
    /** Currency abbreviation.  <example>Eg: SEK</example> */
    public var currency: String?

    public init(id: Int? = nil, name: String? = nil, marketId: Int? = nil, marketPrefix: String? = nil, currency: String? = nil) {
        self.id = id
        self.name = name
        self.marketId = marketId
        self.marketPrefix = marketPrefix
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case name = "Name"
        case marketId = "MarketId"
        case marketPrefix = "MarketPrefix"
        case currency = "Currency"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(marketId, forKey: .marketId)
        try container.encodeIfPresent(marketPrefix, forKey: .marketPrefix)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}
