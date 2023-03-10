//
// OrderModelsRefund.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Data carrier for a refund */
public struct OrderModelsRefund: Codable, JSONEncodable, Hashable {

    /** Unique identifier for this refund */
    public var id: Int?
    /** Reference to the order row that has been refunded */
    public var orderRowId: Int?
    /** Reference to the payment detail that has been refunded */
    public var paymentDetailId: Int?
    /** Id number of the return. Can be used to group refunds. */
    public var returnId: Int?
    /** Article number. If the refund is not bound to an order row this field contains an optional refund article number. */
    public var articleNumber: String?
    /** Datetime when the refund was created */
    public var createdAt: Date?
    /** Total amount refunded */
    public var total: Double?
    /** Reason code for the refund */
    public var reasonCode: Int?
    /** Reason for refund */
    public var reason: String?
    /** Shows if the refund was deposited to the customers balance */
    public var toBalance: Bool?
    /** Vat percent in decimals for the refunded amount */
    public var vat: Double?
    /** Item ID (SKU). */
    public var itemId: Int?
    /** Refund Type */
    public var refundType: String?

    public init(id: Int? = nil, orderRowId: Int? = nil, paymentDetailId: Int? = nil, returnId: Int? = nil, articleNumber: String? = nil, createdAt: Date? = nil, total: Double? = nil, reasonCode: Int? = nil, reason: String? = nil, toBalance: Bool? = nil, vat: Double? = nil, itemId: Int? = nil, refundType: String? = nil) {
        self.id = id
        self.orderRowId = orderRowId
        self.paymentDetailId = paymentDetailId
        self.returnId = returnId
        self.articleNumber = articleNumber
        self.createdAt = createdAt
        self.total = total
        self.reasonCode = reasonCode
        self.reason = reason
        self.toBalance = toBalance
        self.vat = vat
        self.itemId = itemId
        self.refundType = refundType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case orderRowId = "OrderRowId"
        case paymentDetailId = "PaymentDetailId"
        case returnId = "ReturnId"
        case articleNumber = "ArticleNumber"
        case createdAt = "CreatedAt"
        case total = "Total"
        case reasonCode = "ReasonCode"
        case reason = "Reason"
        case toBalance = "ToBalance"
        case vat = "Vat"
        case itemId = "ItemId"
        case refundType = "RefundType"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(orderRowId, forKey: .orderRowId)
        try container.encodeIfPresent(paymentDetailId, forKey: .paymentDetailId)
        try container.encodeIfPresent(returnId, forKey: .returnId)
        try container.encodeIfPresent(articleNumber, forKey: .articleNumber)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(reasonCode, forKey: .reasonCode)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(toBalance, forKey: .toBalance)
        try container.encodeIfPresent(vat, forKey: .vat)
        try container.encodeIfPresent(itemId, forKey: .itemId)
        try container.encodeIfPresent(refundType, forKey: .refundType)
    }
}

