//
// PageAreaModelsWritePageAreaFamily.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PageAreaModelsWritePageAreaFamily: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    /** This page area family has access to the following properties that can be used for filtering, when rendering itself.  <para>  The following properties are available:  SiteId,  LanguageId,  ProductId,  CategoryId,  BrandId,  InfoPageId,  DiscountCampaignNumber,  GenderId,  Sale,  UserTypeId  ActiveFrom,  ActiveTo  </para> */
    public var filterableProperties: [String]?
    public var areas: [PageAreaModelsWritePageArea]?

    public init(id: Int? = nil, name: String? = nil, filterableProperties: [String]? = nil, areas: [PageAreaModelsWritePageArea]? = nil) {
        self.id = id
        self.name = name
        self.filterableProperties = filterableProperties
        self.areas = areas
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case name = "Name"
        case filterableProperties = "FilterableProperties"
        case areas = "Areas"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(filterableProperties, forKey: .filterableProperties)
        try container.encodeIfPresent(areas, forKey: .areas)
    }
}
