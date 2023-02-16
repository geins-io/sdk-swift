//
// ProductParameterModelsReadProductParameterGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An existing product parameter group. */
public struct ProductParameterModelsReadProductParameterGroup: Codable, JSONEncodable, Hashable {

    /** The unique identifier for the groups. */
    public var groupId: Int?
    /** The non-localized name of the group. */
    public var name: String?
    /** The localized names of the group. */
    public var localizedNames: [SharedModelsLocalizableContent]?
    /** The ids of the parameters belonging to this group. */
    public var parameterIds: [Int]?

    public init(groupId: Int? = nil, name: String? = nil, localizedNames: [SharedModelsLocalizableContent]? = nil, parameterIds: [Int]? = nil) {
        self.groupId = groupId
        self.name = name
        self.localizedNames = localizedNames
        self.parameterIds = parameterIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groupId = "GroupId"
        case name = "Name"
        case localizedNames = "LocalizedNames"
        case parameterIds = "ParameterIds"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(localizedNames, forKey: .localizedNames)
        try container.encodeIfPresent(parameterIds, forKey: .parameterIds)
    }
}

