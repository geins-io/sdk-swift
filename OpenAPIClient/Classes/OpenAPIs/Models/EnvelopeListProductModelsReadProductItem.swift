//
// EnvelopeListProductModelsReadProductItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An envelope for the result of and action taken on a resource. */
public struct EnvelopeListProductModelsReadProductItem: Codable, JSONEncodable, Hashable {

    /** A status message for the action taken. */
    public var message: String?
    /** Any validation messages for the data on the current action. */
    public var details: [String]?
    /** The resource on which the action was taken. */
    public var resource: [ProductModelsReadProductItem]?
    public var pageResult: PageResult?

    public init(message: String? = nil, details: [String]? = nil, resource: [ProductModelsReadProductItem]? = nil, pageResult: PageResult? = nil) {
        self.message = message
        self.details = details
        self.resource = resource
        self.pageResult = pageResult
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message = "Message"
        case details = "Details"
        case resource = "Resource"
        case pageResult = "PageResult"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(details, forKey: .details)
        try container.encodeIfPresent(resource, forKey: .resource)
        try container.encodeIfPresent(pageResult, forKey: .pageResult)
    }
}

