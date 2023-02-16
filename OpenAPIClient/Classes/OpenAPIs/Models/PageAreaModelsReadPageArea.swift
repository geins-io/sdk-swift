//
// PageAreaModelsReadPageArea.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The API-version of the PageArea class */
public struct PageAreaModelsReadPageArea: Codable, JSONEncodable, Hashable {

    /** The primary id of this page are family collection */
    public var index: Int?
    /** A descriptive, user-defined name for this page area family collection */
    public var name: String?
    /** The family this area belongs to. */
    public var familyId: Int?
    /** The settings that determine how containers can be added to this area. */
    public var settings: String?
    /** The containers in this area */
    public var containers: [PageAreaModelsReadPageWidgetContainer]?

    public init(index: Int? = nil, name: String? = nil, familyId: Int? = nil, settings: String? = nil, containers: [PageAreaModelsReadPageWidgetContainer]? = nil) {
        self.index = index
        self.name = name
        self.familyId = familyId
        self.settings = settings
        self.containers = containers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case index = "Index"
        case name = "Name"
        case familyId = "FamilyId"
        case settings = "Settings"
        case containers = "Containers"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(index, forKey: .index)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(familyId, forKey: .familyId)
        try container.encodeIfPresent(settings, forKey: .settings)
        try container.encodeIfPresent(containers, forKey: .containers)
    }
}

