//
// CategoryModelsReadCategory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An existing category. */
public struct CategoryModelsReadCategory: Codable, JSONEncodable, Hashable {

    /** The unique identifier for the category. */
    public var categoryId: Int?
    /** The unique identifier for the parent category. */
    public var parentCategoryId: Int?
    /** The localizable names of the category. */
    public var names: [SharedModelsLocalizableContent]?
    /** The localized descriptions of the category. */
    public var descriptions: [SharedModelsLocalizableContent]?
    /** The Google Taxonomy category path for the category, if any. */
    public var googleCategoryPath: String?

    public init(categoryId: Int? = nil, parentCategoryId: Int? = nil, names: [SharedModelsLocalizableContent]? = nil, descriptions: [SharedModelsLocalizableContent]? = nil, googleCategoryPath: String? = nil) {
        self.categoryId = categoryId
        self.parentCategoryId = parentCategoryId
        self.names = names
        self.descriptions = descriptions
        self.googleCategoryPath = googleCategoryPath
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case categoryId = "CategoryId"
        case parentCategoryId = "ParentCategoryId"
        case names = "Names"
        case descriptions = "Descriptions"
        case googleCategoryPath = "GoogleCategoryPath"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(categoryId, forKey: .categoryId)
        try container.encodeIfPresent(parentCategoryId, forKey: .parentCategoryId)
        try container.encodeIfPresent(names, forKey: .names)
        try container.encodeIfPresent(descriptions, forKey: .descriptions)
        try container.encodeIfPresent(googleCategoryPath, forKey: .googleCategoryPath)
    }
}

