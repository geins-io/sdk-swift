//
// ProductModelsReadShippingFee.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A shipping fee for a product item. */
public struct ProductModelsReadShippingFee: Codable, JSONEncodable, Hashable {

    /** The market that the shipping fee is applicable on. */
    public var market: Int?
    /** The country that the shipping fee is applicable in. */
    public var country: String?
    /** The shipping service with the current fee. */
    public var service: String?
    /** The shipping service id with the current fee. */
    public var serviceId: Int?
    /** The shipping fee. */
    public var fee: Double?

    public init(market: Int? = nil, country: String? = nil, service: String? = nil, serviceId: Int? = nil, fee: Double? = nil) {
        self.market = market
        self.country = country
        self.service = service
        self.serviceId = serviceId
        self.fee = fee
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case market = "Market"
        case country = "Country"
        case service = "Service"
        case serviceId = "ServiceId"
        case fee = "Fee"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(market, forKey: .market)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(service, forKey: .service)
        try container.encodeIfPresent(serviceId, forKey: .serviceId)
        try container.encodeIfPresent(fee, forKey: .fee)
    }
}

