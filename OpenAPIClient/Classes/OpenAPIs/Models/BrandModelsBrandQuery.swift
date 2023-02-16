//
// BrandModelsBrandQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A brand query. */
public struct BrandModelsBrandQuery: Codable, JSONEncodable, Hashable {

    /** Limits query to brands created after the specified date. */
    public var createdAfter: Date?
    /** Limits query to only include the supplied brand ids. */
    public var brandIds: [Int]?
    /** Limits query to externalIds */
    public var externalIds: [String]?

    public init(createdAfter: Date? = nil, brandIds: [Int]? = nil, externalIds: [String]? = nil) {
        self.createdAfter = createdAfter
        self.brandIds = brandIds
        self.externalIds = externalIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAfter = "CreatedAfter"
        case brandIds = "BrandIds"
        case externalIds = "ExternalIds"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createdAfter, forKey: .createdAfter)
        try container.encodeIfPresent(brandIds, forKey: .brandIds)
        try container.encodeIfPresent(externalIds, forKey: .externalIds)
    }
}
