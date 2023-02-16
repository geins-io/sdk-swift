//
// OrderCapture.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrderCapture: Codable, JSONEncodable, Hashable {

    public var captureId: UUID?
    public var orderPaymentId: UUID?
    public var orderId: Int?
    public var externalOrderId: String?
    public var externalId: String?
    public var reference: String?
    public var description: String?
    public var processedOn: Date?
    public var capturedItemTotal: Double?
    public var capturedShippingFee: Double?
    public var capturedPaymentFee: Double?
    public var capturedDiscount: Double?
    public var capturedBalance: Double?
    public var vatRate: Double?
    public var trackingNumber: String?
    public var shippingName: String?
    public var trackingUri: String?
    public var shippingMethod: String?
    public var paymentName: String?
    public var locale: String?
    public var rows: [OrderCaptureRow]?
    public var orderTransactionId: String?
    public var secondaryOrderTransactionId: String?

    public init(captureId: UUID? = nil, orderPaymentId: UUID? = nil, orderId: Int? = nil, externalOrderId: String? = nil, externalId: String? = nil, reference: String? = nil, description: String? = nil, processedOn: Date? = nil, capturedItemTotal: Double? = nil, capturedShippingFee: Double? = nil, capturedPaymentFee: Double? = nil, capturedDiscount: Double? = nil, capturedBalance: Double? = nil, vatRate: Double? = nil, trackingNumber: String? = nil, shippingName: String? = nil, trackingUri: String? = nil, shippingMethod: String? = nil, paymentName: String? = nil, locale: String? = nil, rows: [OrderCaptureRow]? = nil, orderTransactionId: String? = nil, secondaryOrderTransactionId: String? = nil) {
        self.captureId = captureId
        self.orderPaymentId = orderPaymentId
        self.orderId = orderId
        self.externalOrderId = externalOrderId
        self.externalId = externalId
        self.reference = reference
        self.description = description
        self.processedOn = processedOn
        self.capturedItemTotal = capturedItemTotal
        self.capturedShippingFee = capturedShippingFee
        self.capturedPaymentFee = capturedPaymentFee
        self.capturedDiscount = capturedDiscount
        self.capturedBalance = capturedBalance
        self.vatRate = vatRate
        self.trackingNumber = trackingNumber
        self.shippingName = shippingName
        self.trackingUri = trackingUri
        self.shippingMethod = shippingMethod
        self.paymentName = paymentName
        self.locale = locale
        self.rows = rows
        self.orderTransactionId = orderTransactionId
        self.secondaryOrderTransactionId = secondaryOrderTransactionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case captureId = "CaptureId"
        case orderPaymentId = "OrderPaymentId"
        case orderId = "OrderId"
        case externalOrderId = "ExternalOrderId"
        case externalId = "ExternalId"
        case reference = "Reference"
        case description = "Description"
        case processedOn = "ProcessedOn"
        case capturedItemTotal = "CapturedItemTotal"
        case capturedShippingFee = "CapturedShippingFee"
        case capturedPaymentFee = "CapturedPaymentFee"
        case capturedDiscount = "CapturedDiscount"
        case capturedBalance = "CapturedBalance"
        case vatRate = "VatRate"
        case trackingNumber = "TrackingNumber"
        case shippingName = "ShippingName"
        case trackingUri = "TrackingUri"
        case shippingMethod = "ShippingMethod"
        case paymentName = "PaymentName"
        case locale = "Locale"
        case rows = "Rows"
        case orderTransactionId = "OrderTransactionId"
        case secondaryOrderTransactionId = "SecondaryOrderTransactionId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(captureId, forKey: .captureId)
        try container.encodeIfPresent(orderPaymentId, forKey: .orderPaymentId)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(reference, forKey: .reference)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(processedOn, forKey: .processedOn)
        try container.encodeIfPresent(capturedItemTotal, forKey: .capturedItemTotal)
        try container.encodeIfPresent(capturedShippingFee, forKey: .capturedShippingFee)
        try container.encodeIfPresent(capturedPaymentFee, forKey: .capturedPaymentFee)
        try container.encodeIfPresent(capturedDiscount, forKey: .capturedDiscount)
        try container.encodeIfPresent(capturedBalance, forKey: .capturedBalance)
        try container.encodeIfPresent(vatRate, forKey: .vatRate)
        try container.encodeIfPresent(trackingNumber, forKey: .trackingNumber)
        try container.encodeIfPresent(shippingName, forKey: .shippingName)
        try container.encodeIfPresent(trackingUri, forKey: .trackingUri)
        try container.encodeIfPresent(shippingMethod, forKey: .shippingMethod)
        try container.encodeIfPresent(paymentName, forKey: .paymentName)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(rows, forKey: .rows)
        try container.encodeIfPresent(orderTransactionId, forKey: .orderTransactionId)
        try container.encodeIfPresent(secondaryOrderTransactionId, forKey: .secondaryOrderTransactionId)
    }
}

