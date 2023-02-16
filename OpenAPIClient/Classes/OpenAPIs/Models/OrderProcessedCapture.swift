//
// OrderProcessedCapture.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrderProcessedCapture: Codable, JSONEncodable, Hashable {

    public var captureId: UUID?
    public var externalId: String?
    public var reference: String?
    public var processedOn: Date?

    public init(captureId: UUID? = nil, externalId: String? = nil, reference: String? = nil, processedOn: Date? = nil) {
        self.captureId = captureId
        self.externalId = externalId
        self.reference = reference
        self.processedOn = processedOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case captureId = "CaptureId"
        case externalId = "ExternalId"
        case reference = "Reference"
        case processedOn = "ProcessedOn"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(captureId, forKey: .captureId)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(reference, forKey: .reference)
        try container.encodeIfPresent(processedOn, forKey: .processedOn)
    }
}

