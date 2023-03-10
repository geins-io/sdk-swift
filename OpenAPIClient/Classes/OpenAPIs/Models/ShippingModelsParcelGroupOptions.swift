//
// ShippingModelsParcelGroupOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Creation options for new parcel groups. */
public struct ShippingModelsParcelGroupOptions: Codable, JSONEncodable, Hashable {

    /** The order ids contained in this parcel group. */
    public var orderIds: [Int]?
    /** Set to true to also automatically mark orders as delivered upon creation of the parcel group. */
    public var markAsDelivered: Bool?
    /** Set to true to also automatically signal capture events upon creation of the parcel group. */
    public var signalCapturesCreated: Bool?

    public init(orderIds: [Int]? = nil, markAsDelivered: Bool? = nil, signalCapturesCreated: Bool? = nil) {
        self.orderIds = orderIds
        self.markAsDelivered = markAsDelivered
        self.signalCapturesCreated = signalCapturesCreated
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case orderIds = "OrderIds"
        case markAsDelivered = "MarkAsDelivered"
        case signalCapturesCreated = "SignalCapturesCreated"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(orderIds, forKey: .orderIds)
        try container.encodeIfPresent(markAsDelivered, forKey: .markAsDelivered)
        try container.encodeIfPresent(signalCapturesCreated, forKey: .signalCapturesCreated)
    }
}

