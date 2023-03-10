//
// ProductParameterModelsReadProductParameterValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A parameter value for a product. */
public struct ProductParameterModelsReadProductParameterValue: Codable, JSONEncodable, Hashable {

    public enum ParameterType: Int, Codable, CaseIterable {
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
        case _5 = 5
        case _6 = 6
        case _7 = 7
    }
    /** The unique identifier of this parameter value. */
    public var parameterValueId: Int?
    /** The product id of the parameter. */
    public var productId: Int?
    /** The unique identifier of the parameter that this value belongs to. */
    public var parameterId: Int?
    /** The non-localized name of the parameter. */
    public var parameterName: String?
    /** The unique identifier of the group that this parameter belongs to. */
    public var groupId: Int?
    /** The name of the group that this parameter belongs to. */
    public var groupName: String?
    /** The type of parameter. */
    public var parameterType: ParameterType?
    /** The identifying value of the parameter. */
    public var value: String?
    /** The non-localized description of the parameter. */
    public var description: String?
    /** The localized descriptions of the parameter. */
    public var localizedDescriptions: [SharedModelsLocalizableContent]?
    /** The internal identifier of the parameter. */
    public var internalIdentifier: String?

    public init(parameterValueId: Int? = nil, productId: Int? = nil, parameterId: Int? = nil, parameterName: String? = nil, groupId: Int? = nil, groupName: String? = nil, parameterType: ParameterType? = nil, value: String? = nil, description: String? = nil, localizedDescriptions: [SharedModelsLocalizableContent]? = nil, internalIdentifier: String? = nil) {
        self.parameterValueId = parameterValueId
        self.productId = productId
        self.parameterId = parameterId
        self.parameterName = parameterName
        self.groupId = groupId
        self.groupName = groupName
        self.parameterType = parameterType
        self.value = value
        self.description = description
        self.localizedDescriptions = localizedDescriptions
        self.internalIdentifier = internalIdentifier
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case parameterValueId = "ParameterValueId"
        case productId = "ProductId"
        case parameterId = "ParameterId"
        case parameterName = "ParameterName"
        case groupId = "GroupId"
        case groupName = "GroupName"
        case parameterType = "ParameterType"
        case value = "Value"
        case description = "Description"
        case localizedDescriptions = "LocalizedDescriptions"
        case internalIdentifier = "InternalIdentifier"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(parameterValueId, forKey: .parameterValueId)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(parameterId, forKey: .parameterId)
        try container.encodeIfPresent(parameterName, forKey: .parameterName)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(groupName, forKey: .groupName)
        try container.encodeIfPresent(parameterType, forKey: .parameterType)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(localizedDescriptions, forKey: .localizedDescriptions)
        try container.encodeIfPresent(internalIdentifier, forKey: .internalIdentifier)
    }
}

