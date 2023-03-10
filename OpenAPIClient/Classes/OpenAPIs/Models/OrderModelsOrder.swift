//
// OrderModelsOrder.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Data carrier for an order. */
public struct OrderModelsOrder: Codable, JSONEncodable, Hashable {

    public enum ExternalOrderStatus: Int, Codable, CaseIterable {
        case _0 = 0
        case _10 = 10
        case _20 = 20
        case _30 = 30
        case _40 = 40
    }
    /** The unique identifier for this order. */
    public var id: Int?
    /** The unique external identifier for this order. */
    public var externalId: String?
    /** The social security number, or organisational number of the customer. */
    public var personalId: String?
    /** The unique identifier of the customer placing this order. */
    public var customerId: Int?
    /** Customer type. Usually 1 for private customers and 2 for companies. This field is customer specific */
    public var customerTypeId: Int?
    /** Datetime when the order was created. */
    public var createdAt: Date?
    /** Datetime when the order was last updated. */
    public var updatedAt: Date?
    /** The DateTime when the order was completed (delivered, payed). */
    public var completedAt: Date?
    /** The order status. Possbile values: cancelled, on-hold, inactive, refunded, partial,  pending-payment, out-of-stock, backorder, completed, pending. */
    public var status: String?
    /** ISO Currency code. */
    public var currency: String?
    /** The Currency Rate to SEK. */
    public var currencyRate: Double?
    /** The unique identifier for the market this order originates from. */
    public var marketId: Int?
    /** The market name. Usually this is the equal to the site name. */
    public var marketName: String?
    /** Two-letter Language code. */
    public var language: String?
    /** Order total. */
    public var orderTotal: Double?
    /** Expected total sum to be paid after discount and balance.   <para>The value is usually taken directly from the payment provider and represents the actual reserved amount.</para><para>If this differs from OrderTotal, actions should be taken to ensure they match. This usually happens due to rounding.</para> */
    public var expectedSum: Double?
    /** Order VAT total. */
    public var vATTotal: Double?
    /** Order value inc vat after discount but before balance */
    public var orderValueIncVat: Double?
    /** Order value ex vat after discount but before balance */
    public var orderValueExVat: Double?
    /** Item value inc vat excluding fees and discount */
    public var itemValueIncVat: Double?
    /** Item value ex vat excluding fees and discount */
    public var itemValueExVat: Double?
    /** Total discount inc vat. */
    public var discount: Double?
    /** Total discount ex vat. */
    public var discountExVat: Double?
    /** The amount which was withdrawn from the customers balance inc vat. */
    public var fromBalance: Double?
    /** Shipping fee inc vat. */
    public var shippingFee: Double?
    /** Shipping fee ex vat. */
    public var shippingFeeExVat: Double?
    /** Payment fee inc vat. */
    public var paymentFee: Double?
    /** Payment fee ex vat. */
    public var paymentFeeExVat: Double?
    /** Order message. Can contain instructions from customer or added details about the order. */
    public var message: String?
    /** Internal order messages. Can contain internal details about the order. */
    public var orderMessages: [String]?
    /** List of payment details <seealso cref=\"T:Order.Models.PaymentDetail\" />. */
    public var paymentDetails: [OrderModelsPaymentDetail]?
    /** List of shipping details <seealso cref=\"T:Order.Models.ShippingDetail\" />. */
    public var shippingDetails: [OrderModelsShippingDetail]?
    public var shippingAddress: OrderModelsAddress?
    public var billingAddress: OrderModelsAddress?
    /** List of order rows */
    public var rows: [OrderModelsOrderRow]?
    /** List of order refunds <seealso cref=\"T:Order.Models.Refund\" />. */
    public var refunds: [OrderModelsRefund]?
    /** Customer IP-number. */
    public var ip: String?
    /** Customer User Agent. */
    public var userAgent: String?
    /** Chosen service location. */
    public var serviceLocation: String?
    /** Campaign code applied to the order. */
    public var campaignCode: String?
    /** The internal id of the applied campaign code. */
    public var campaignCodeId: Int?
    /** General percent discount applied to the order. */
    public var percent: Int?
    /** The desired delivery date of the order. */
    public var desiredDeliveryDate: Date?
    /** The gender of the customer. True = male, False = female, null = unknown. */
    public var gender: Bool?
    /** The unique identifier for the cart from which this order originates. */
    public var cartId: Int?
    /** The session id for the from which this order originates. */
    public var sessionId: String?
    public var externalOrderStatus: ExternalOrderStatus?
    /** The ids for the campaigns applied to this order (not rows) */
    public var campaignIds: [String]?
    /** The names for the campaigns applied to this order (not rows) */
    public var campaignNames: [String]?
    /** The order meta data to store additional information about the order. Eg. customer specific shipping data to include for nShift checkout (former UDC) shipments */
    public var metaData: [String: String]?
    /** The public id of this order. */
    public var publicId: UUID?

    public init(id: Int? = nil, externalId: String? = nil, personalId: String? = nil, customerId: Int? = nil, customerTypeId: Int? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, completedAt: Date? = nil, status: String? = nil, currency: String? = nil, currencyRate: Double? = nil, marketId: Int? = nil, marketName: String? = nil, language: String? = nil, orderTotal: Double? = nil, expectedSum: Double? = nil, vATTotal: Double? = nil, orderValueIncVat: Double? = nil, orderValueExVat: Double? = nil, itemValueIncVat: Double? = nil, itemValueExVat: Double? = nil, discount: Double? = nil, discountExVat: Double? = nil, fromBalance: Double? = nil, shippingFee: Double? = nil, shippingFeeExVat: Double? = nil, paymentFee: Double? = nil, paymentFeeExVat: Double? = nil, message: String? = nil, orderMessages: [String]? = nil, paymentDetails: [OrderModelsPaymentDetail]? = nil, shippingDetails: [OrderModelsShippingDetail]? = nil, shippingAddress: OrderModelsAddress? = nil, billingAddress: OrderModelsAddress? = nil, rows: [OrderModelsOrderRow]? = nil, refunds: [OrderModelsRefund]? = nil, ip: String? = nil, userAgent: String? = nil, serviceLocation: String? = nil, campaignCode: String? = nil, campaignCodeId: Int? = nil, percent: Int? = nil, desiredDeliveryDate: Date? = nil, gender: Bool? = nil, cartId: Int? = nil, sessionId: String? = nil, externalOrderStatus: ExternalOrderStatus? = nil, campaignIds: [String]? = nil, campaignNames: [String]? = nil, metaData: [String: String]? = nil, publicId: UUID? = nil) {
        self.id = id
        self.externalId = externalId
        self.personalId = personalId
        self.customerId = customerId
        self.customerTypeId = customerTypeId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.completedAt = completedAt
        self.status = status
        self.currency = currency
        self.currencyRate = currencyRate
        self.marketId = marketId
        self.marketName = marketName
        self.language = language
        self.orderTotal = orderTotal
        self.expectedSum = expectedSum
        self.vATTotal = vATTotal
        self.orderValueIncVat = orderValueIncVat
        self.orderValueExVat = orderValueExVat
        self.itemValueIncVat = itemValueIncVat
        self.itemValueExVat = itemValueExVat
        self.discount = discount
        self.discountExVat = discountExVat
        self.fromBalance = fromBalance
        self.shippingFee = shippingFee
        self.shippingFeeExVat = shippingFeeExVat
        self.paymentFee = paymentFee
        self.paymentFeeExVat = paymentFeeExVat
        self.message = message
        self.orderMessages = orderMessages
        self.paymentDetails = paymentDetails
        self.shippingDetails = shippingDetails
        self.shippingAddress = shippingAddress
        self.billingAddress = billingAddress
        self.rows = rows
        self.refunds = refunds
        self.ip = ip
        self.userAgent = userAgent
        self.serviceLocation = serviceLocation
        self.campaignCode = campaignCode
        self.campaignCodeId = campaignCodeId
        self.percent = percent
        self.desiredDeliveryDate = desiredDeliveryDate
        self.gender = gender
        self.cartId = cartId
        self.sessionId = sessionId
        self.externalOrderStatus = externalOrderStatus
        self.campaignIds = campaignIds
        self.campaignNames = campaignNames
        self.metaData = metaData
        self.publicId = publicId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case externalId = "ExternalId"
        case personalId = "PersonalId"
        case customerId = "CustomerId"
        case customerTypeId = "CustomerTypeId"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case completedAt = "CompletedAt"
        case status = "Status"
        case currency = "Currency"
        case currencyRate = "CurrencyRate"
        case marketId = "MarketId"
        case marketName = "MarketName"
        case language = "Language"
        case orderTotal = "OrderTotal"
        case expectedSum = "ExpectedSum"
        case vATTotal = "VATTotal"
        case orderValueIncVat = "OrderValueIncVat"
        case orderValueExVat = "OrderValueExVat"
        case itemValueIncVat = "ItemValueIncVat"
        case itemValueExVat = "ItemValueExVat"
        case discount = "Discount"
        case discountExVat = "DiscountExVat"
        case fromBalance = "FromBalance"
        case shippingFee = "ShippingFee"
        case shippingFeeExVat = "ShippingFeeExVat"
        case paymentFee = "PaymentFee"
        case paymentFeeExVat = "PaymentFeeExVat"
        case message = "Message"
        case orderMessages = "OrderMessages"
        case paymentDetails = "PaymentDetails"
        case shippingDetails = "ShippingDetails"
        case shippingAddress = "ShippingAddress"
        case billingAddress = "BillingAddress"
        case rows = "Rows"
        case refunds = "Refunds"
        case ip = "Ip"
        case userAgent = "UserAgent"
        case serviceLocation = "ServiceLocation"
        case campaignCode = "CampaignCode"
        case campaignCodeId = "CampaignCodeId"
        case percent = "Percent"
        case desiredDeliveryDate = "DesiredDeliveryDate"
        case gender = "Gender"
        case cartId = "CartId"
        case sessionId = "SessionId"
        case externalOrderStatus = "ExternalOrderStatus"
        case campaignIds = "CampaignIds"
        case campaignNames = "CampaignNames"
        case metaData = "MetaData"
        case publicId = "PublicId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(personalId, forKey: .personalId)
        try container.encodeIfPresent(customerId, forKey: .customerId)
        try container.encodeIfPresent(customerTypeId, forKey: .customerTypeId)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(completedAt, forKey: .completedAt)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(currencyRate, forKey: .currencyRate)
        try container.encodeIfPresent(marketId, forKey: .marketId)
        try container.encodeIfPresent(marketName, forKey: .marketName)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(orderTotal, forKey: .orderTotal)
        try container.encodeIfPresent(expectedSum, forKey: .expectedSum)
        try container.encodeIfPresent(vATTotal, forKey: .vATTotal)
        try container.encodeIfPresent(orderValueIncVat, forKey: .orderValueIncVat)
        try container.encodeIfPresent(orderValueExVat, forKey: .orderValueExVat)
        try container.encodeIfPresent(itemValueIncVat, forKey: .itemValueIncVat)
        try container.encodeIfPresent(itemValueExVat, forKey: .itemValueExVat)
        try container.encodeIfPresent(discount, forKey: .discount)
        try container.encodeIfPresent(discountExVat, forKey: .discountExVat)
        try container.encodeIfPresent(fromBalance, forKey: .fromBalance)
        try container.encodeIfPresent(shippingFee, forKey: .shippingFee)
        try container.encodeIfPresent(shippingFeeExVat, forKey: .shippingFeeExVat)
        try container.encodeIfPresent(paymentFee, forKey: .paymentFee)
        try container.encodeIfPresent(paymentFeeExVat, forKey: .paymentFeeExVat)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(orderMessages, forKey: .orderMessages)
        try container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
        try container.encodeIfPresent(shippingDetails, forKey: .shippingDetails)
        try container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        try container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        try container.encodeIfPresent(rows, forKey: .rows)
        try container.encodeIfPresent(refunds, forKey: .refunds)
        try container.encodeIfPresent(ip, forKey: .ip)
        try container.encodeIfPresent(userAgent, forKey: .userAgent)
        try container.encodeIfPresent(serviceLocation, forKey: .serviceLocation)
        try container.encodeIfPresent(campaignCode, forKey: .campaignCode)
        try container.encodeIfPresent(campaignCodeId, forKey: .campaignCodeId)
        try container.encodeIfPresent(percent, forKey: .percent)
        try container.encodeIfPresent(desiredDeliveryDate, forKey: .desiredDeliveryDate)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(cartId, forKey: .cartId)
        try container.encodeIfPresent(sessionId, forKey: .sessionId)
        try container.encodeIfPresent(externalOrderStatus, forKey: .externalOrderStatus)
        try container.encodeIfPresent(campaignIds, forKey: .campaignIds)
        try container.encodeIfPresent(campaignNames, forKey: .campaignNames)
        try container.encodeIfPresent(metaData, forKey: .metaData)
        try container.encodeIfPresent(publicId, forKey: .publicId)
    }
}

