//
// SharedModelsLocalizableContent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A piece of localized content. */
public struct SharedModelsLocalizableContent: Codable, JSONEncodable, Hashable {

    /** The 2-letter ISO 639-1 language code for this locale. */
    public var languageCode: String?
    /** The localized content. */
    public var content: String?

    public init(languageCode: String? = nil, content: String? = nil) {
        self.languageCode = languageCode
        self.content = content
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case languageCode = "LanguageCode"
        case content = "Content"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(content, forKey: .content)
    }
}
