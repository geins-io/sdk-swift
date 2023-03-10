//
// UserModelsReadUserProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserModelsReadUserProfile: Codable, JSONEncodable, Hashable {

    public var userId: Int?
    public var siteId: Int?
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var phoneNr: String?
    public var mobilePhoneNr: String?
    public var company: String?
    public var address: String?
    public var address2: String?
    public var address3: String?
    public var doorCode: String?
    public var personalId: String?
    public var birthyear: String?
    public var zip: String?
    public var city: String?
    public var careOf: String?
    public var country: String?
    public var memberId: Int?
    public var memberType: String?
    public var countryId: Int?
    public var userTypeId: Int?
    public var gender: Bool?
    /** Decides whether the user should be subscribed to the newsletter. */
    public var newsletter: Bool?

    public init(userId: Int? = nil, siteId: Int? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, phoneNr: String? = nil, mobilePhoneNr: String? = nil, company: String? = nil, address: String? = nil, address2: String? = nil, address3: String? = nil, doorCode: String? = nil, personalId: String? = nil, birthyear: String? = nil, zip: String? = nil, city: String? = nil, careOf: String? = nil, country: String? = nil, memberId: Int? = nil, memberType: String? = nil, countryId: Int? = nil, userTypeId: Int? = nil, gender: Bool? = nil, newsletter: Bool? = nil) {
        self.userId = userId
        self.siteId = siteId
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNr = phoneNr
        self.mobilePhoneNr = mobilePhoneNr
        self.company = company
        self.address = address
        self.address2 = address2
        self.address3 = address3
        self.doorCode = doorCode
        self.personalId = personalId
        self.birthyear = birthyear
        self.zip = zip
        self.city = city
        self.careOf = careOf
        self.country = country
        self.memberId = memberId
        self.memberType = memberType
        self.countryId = countryId
        self.userTypeId = userTypeId
        self.gender = gender
        self.newsletter = newsletter
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId = "UserId"
        case siteId = "SiteId"
        case email = "Email"
        case firstName = "FirstName"
        case lastName = "LastName"
        case phoneNr = "PhoneNr"
        case mobilePhoneNr = "MobilePhoneNr"
        case company = "Company"
        case address = "Address"
        case address2 = "Address2"
        case address3 = "Address3"
        case doorCode = "DoorCode"
        case personalId = "PersonalId"
        case birthyear = "Birthyear"
        case zip = "Zip"
        case city = "City"
        case careOf = "CareOf"
        case country = "Country"
        case memberId = "MemberId"
        case memberType = "MemberType"
        case countryId = "CountryId"
        case userTypeId = "UserTypeId"
        case gender = "Gender"
        case newsletter = "Newsletter"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(siteId, forKey: .siteId)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(phoneNr, forKey: .phoneNr)
        try container.encodeIfPresent(mobilePhoneNr, forKey: .mobilePhoneNr)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(address2, forKey: .address2)
        try container.encodeIfPresent(address3, forKey: .address3)
        try container.encodeIfPresent(doorCode, forKey: .doorCode)
        try container.encodeIfPresent(personalId, forKey: .personalId)
        try container.encodeIfPresent(birthyear, forKey: .birthyear)
        try container.encodeIfPresent(zip, forKey: .zip)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(careOf, forKey: .careOf)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(memberId, forKey: .memberId)
        try container.encodeIfPresent(memberType, forKey: .memberType)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(userTypeId, forKey: .userTypeId)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(newsletter, forKey: .newsletter)
    }
}

