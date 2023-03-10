//
// ProductModelsReadFeedMembership.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A product feed membership. */
public struct ProductModelsReadFeedMembership: Codable, JSONEncodable, Hashable {

    /** The feed id. */
    public var feedId: Int?
    /** True if the feed is allowed to display the sale price of the product. */
    public var allowSale: Bool?

    public init(feedId: Int? = nil, allowSale: Bool? = nil) {
        self.feedId = feedId
        self.allowSale = allowSale
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case feedId = "FeedId"
        case allowSale = "AllowSale"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(feedId, forKey: .feedId)
        try container.encodeIfPresent(allowSale, forKey: .allowSale)
    }
}

