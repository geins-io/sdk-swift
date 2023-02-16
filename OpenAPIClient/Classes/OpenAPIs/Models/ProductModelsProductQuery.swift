//
// ProductModelsProductQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A prroduct query. */
public struct ProductModelsProductQuery: Codable, JSONEncodable, Hashable {

    /** Limits query to products updated after the specified date. */
    public var updatedAfter: Date?
    /** Limits query to only include the supplied product ids. */
    public var productIds: [Int]?
    /** Limits query to only include products with supplied article numbers. */
    public var articleNumbers: [String]?
    /** Limits query to only include products that are available for purchase */
    public var onlySellable: Bool?
    /** Limits query to only include products contained in the specified feed. */
    public var feedId: Int?
    /** Used to fetch products where the result set is split into batches */
    public var batchId: UUID?

    public init(updatedAfter: Date? = nil, productIds: [Int]? = nil, articleNumbers: [String]? = nil, onlySellable: Bool? = nil, feedId: Int? = nil, batchId: UUID? = nil) {
        self.updatedAfter = updatedAfter
        self.productIds = productIds
        self.articleNumbers = articleNumbers
        self.onlySellable = onlySellable
        self.feedId = feedId
        self.batchId = batchId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case updatedAfter = "UpdatedAfter"
        case productIds = "ProductIds"
        case articleNumbers = "ArticleNumbers"
        case onlySellable = "OnlySellable"
        case feedId = "FeedId"
        case batchId = "BatchId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(updatedAfter, forKey: .updatedAfter)
        try container.encodeIfPresent(productIds, forKey: .productIds)
        try container.encodeIfPresent(articleNumbers, forKey: .articleNumbers)
        try container.encodeIfPresent(onlySellable, forKey: .onlySellable)
        try container.encodeIfPresent(feedId, forKey: .feedId)
        try container.encodeIfPresent(batchId, forKey: .batchId)
    }
}
