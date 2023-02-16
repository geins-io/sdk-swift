//
// OrderModelsAddress.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Data carrier for an address */
public struct OrderModelsAddress: Codable, JSONEncodable, Hashable {

    /** Company name */
    public var company: String?
    /** Care of. C/O */
    public var careOf: String?
    /** ISO code or name of the state, province or district */
    public var state: String?
    /** ISO code of the country */
    public var country: String?
    /** The first part(s) of the customer name */
    public var firstName: String?
    /** The last part(s), or family name of the customer */
    public var lastName: String?
    /** The email of the customer */
    public var email: String?
    /** The first line of the address, usually street and house number */
    public var addressLine1: String?
    /** The second line of the address. */
    public var addressLine2: String?
    /** The third line of the address. */
    public var addressLine3: String?
    /** The postal / zip code. */
    public var zip: String?
    /** The city. */
    public var city: String?
    /** The (land-line) phone number of the customer */
    public var phone: String?
    /** The SMS-capable number of the customer */
    public var mobile: String?
    /** The delivery address entry code, if needed for successful delivery */
    public var entryCode: String?

    public init(company: String? = nil, careOf: String? = nil, state: String? = nil, country: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, addressLine1: String? = nil, addressLine2: String? = nil, addressLine3: String? = nil, zip: String? = nil, city: String? = nil, phone: String? = nil, mobile: String? = nil, entryCode: String? = nil) {
        self.company = company
        self.careOf = careOf
        self.state = state
        self.country = country
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.addressLine3 = addressLine3
        self.zip = zip
        self.city = city
        self.phone = phone
        self.mobile = mobile
        self.entryCode = entryCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case company = "Company"
        case careOf = "CareOf"
        case state = "State"
        case country = "Country"
        case firstName = "FirstName"
        case lastName = "LastName"
        case email = "Email"
        case addressLine1 = "AddressLine1"
        case addressLine2 = "AddressLine2"
        case addressLine3 = "AddressLine3"
        case zip = "Zip"
        case city = "City"
        case phone = "Phone"
        case mobile = "Mobile"
        case entryCode = "EntryCode"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(careOf, forKey: .careOf)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(addressLine1, forKey: .addressLine1)
        try container.encodeIfPresent(addressLine2, forKey: .addressLine2)
        try container.encodeIfPresent(addressLine3, forKey: .addressLine3)
        try container.encodeIfPresent(zip, forKey: .zip)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(mobile, forKey: .mobile)
        try container.encodeIfPresent(entryCode, forKey: .entryCode)
    }
}
