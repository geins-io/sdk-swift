//
// ProductModelsStockEnvelope.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The response of a Stock request. */
public struct ProductModelsStockEnvelope: Codable, JSONEncodable, Hashable {

    /** Information about the outcome of the request. */
    public var message: String?
    /** Supplied productItemStocks that failed validation. */
    public var invalid: [ProductModelsWriteProductItemStock]?
    /** Supplied productItemStocks that were technically valid, but couldn't be found. */
    public var notFound: [ProductModelsWriteProductItemStock]?
    /** Number of stock updates resulting from the request. */
    public var updateCount: Int?

    public init(message: String? = nil, invalid: [ProductModelsWriteProductItemStock]? = nil, notFound: [ProductModelsWriteProductItemStock]? = nil, updateCount: Int? = nil) {
        self.message = message
        self.invalid = invalid
        self.notFound = notFound
        self.updateCount = updateCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message = "Message"
        case invalid = "Invalid"
        case notFound = "NotFound"
        case updateCount = "UpdateCount"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(invalid, forKey: .invalid)
        try container.encodeIfPresent(notFound, forKey: .notFound)
        try container.encodeIfPresent(updateCount, forKey: .updateCount)
    }
}

