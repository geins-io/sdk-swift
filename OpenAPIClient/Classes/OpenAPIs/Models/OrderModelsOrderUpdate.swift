//
// OrderModelsOrderUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Data carrier for update operation on an order. */
public struct OrderModelsOrderUpdate: Codable, JSONEncodable, Hashable {

    public enum ExternalOrderStatus: Int, Codable, CaseIterable {
        case _0 = 0
        case _10 = 10
        case _20 = 20
        case _30 = 30
        case _40 = 40
    }
    /** The unique external identifier for this order. */
    public var externalId: String?
    /** Parcel number (tracking number) */
    public var parcelNumber: String?
    /** The external order status */
    public var externalOrderStatus: ExternalOrderStatus?

    public init(externalId: String? = nil, parcelNumber: String? = nil, externalOrderStatus: ExternalOrderStatus? = nil) {
        self.externalId = externalId
        self.parcelNumber = parcelNumber
        self.externalOrderStatus = externalOrderStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case externalId = "ExternalId"
        case parcelNumber = "ParcelNumber"
        case externalOrderStatus = "ExternalOrderStatus"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(parcelNumber, forKey: .parcelNumber)
        try container.encodeIfPresent(externalOrderStatus, forKey: .externalOrderStatus)
    }
}

