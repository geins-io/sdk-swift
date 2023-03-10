//
// ProductModelsReadProductItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A product item belonging to a product. */
public struct ProductModelsReadProductItem: Codable, JSONEncodable, Hashable {

    /** The product item id. */
    public var itemId: Int?
    /** The article number for the product item. */
    public var articleNumber: String?
    /** The id of the product that the item belongs to. */
    public var productId: Int?
    /** The name of the product item. */
    public var name: String?
    /** The shelf name where the product item can be found. */
    public var shelf: String?
    /** The weight of the item in grams (g). */
    public var weight: Int?
    /** The length of the item in millimeters (mm). */
    public var length: Int?
    /** The width of the item in millimeters (mm). */
    public var width: Int?
    /** The height of the item in millimeters (mm). */
    public var height: Int?
    /** The GTIN number for the item. */
    public var gtin: String?
    /** The date the item was created. */
    public var dateCreated: Date?
    /** The date the item was last updated. */
    public var dateUpdated: Date?
    /** The current state of the item. */
    public var active: Bool?
    /** External Id of the product item. */
    public var externalId: String?
    public var stock: ProductModelsReadProductItemStock?
    /** The lowest shipping fees for each market and country for the product item. */
    public var shippingFees: [ProductModelsReadShippingFee]?

    public init(itemId: Int? = nil, articleNumber: String? = nil, productId: Int? = nil, name: String? = nil, shelf: String? = nil, weight: Int? = nil, length: Int? = nil, width: Int? = nil, height: Int? = nil, gtin: String? = nil, dateCreated: Date? = nil, dateUpdated: Date? = nil, active: Bool? = nil, externalId: String? = nil, stock: ProductModelsReadProductItemStock? = nil, shippingFees: [ProductModelsReadShippingFee]? = nil) {
        self.itemId = itemId
        self.articleNumber = articleNumber
        self.productId = productId
        self.name = name
        self.shelf = shelf
        self.weight = weight
        self.length = length
        self.width = width
        self.height = height
        self.gtin = gtin
        self.dateCreated = dateCreated
        self.dateUpdated = dateUpdated
        self.active = active
        self.externalId = externalId
        self.stock = stock
        self.shippingFees = shippingFees
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId = "ItemId"
        case articleNumber = "ArticleNumber"
        case productId = "ProductId"
        case name = "Name"
        case shelf = "Shelf"
        case weight = "Weight"
        case length = "Length"
        case width = "Width"
        case height = "Height"
        case gtin = "Gtin"
        case dateCreated = "DateCreated"
        case dateUpdated = "DateUpdated"
        case active = "Active"
        case externalId = "ExternalId"
        case stock = "Stock"
        case shippingFees = "ShippingFees"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(itemId, forKey: .itemId)
        try container.encodeIfPresent(articleNumber, forKey: .articleNumber)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shelf, forKey: .shelf)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(length, forKey: .length)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(gtin, forKey: .gtin)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(dateUpdated, forKey: .dateUpdated)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(stock, forKey: .stock)
        try container.encodeIfPresent(shippingFees, forKey: .shippingFees)
    }
}

