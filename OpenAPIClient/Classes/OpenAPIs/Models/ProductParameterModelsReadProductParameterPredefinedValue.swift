//
// ProductParameterModelsReadProductParameterPredefinedValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A predefined value for a product parameter. */
public struct ProductParameterModelsReadProductParameterPredefinedValue: Codable, JSONEncodable, Hashable {

    /** The unique identifier for the parameter. */
    public var parameterId: Int?
    /** The predefined value id of the parameter. */
    public var predefinedValueId: Int?
    /** The non-localized predefined value name of the parameter. */
    public var name: String?
    /** The localized predefined value names of the parameter. */
    public var localizedNames: [SharedModelsLocalizableContent]?

    public init(parameterId: Int? = nil, predefinedValueId: Int? = nil, name: String? = nil, localizedNames: [SharedModelsLocalizableContent]? = nil) {
        self.parameterId = parameterId
        self.predefinedValueId = predefinedValueId
        self.name = name
        self.localizedNames = localizedNames
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case parameterId = "ParameterId"
        case predefinedValueId = "PredefinedValueId"
        case name = "Name"
        case localizedNames = "LocalizedNames"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(parameterId, forKey: .parameterId)
        try container.encodeIfPresent(predefinedValueId, forKey: .predefinedValueId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(localizedNames, forKey: .localizedNames)
    }
}
