# UserAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserProfile**](UserAPI.md#createuserprofile) | **POST** /API/User | Create user profile
[**deleteUserProfile**](UserAPI.md#deleteuserprofile) | **DELETE** /API/User/email | Delete user profile
[**getUserProfile**](UserAPI.md#getuserprofile) | **POST** /API/User/Query | Get a specific user profile
[**updateUserProfile**](UserAPI.md#updateuserprofile) | **PUT** /API/User | Update user profile


# **createUserProfile**
```swift
    open class func createUserProfile(userProfile: UserModelsWriteUserProfile, completion: @escaping (_ data: EnvelopeUserModelsReadUserProfile?, _ error: Error?) -> Void)
```

Create user profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userProfile = User.Models.Write.UserProfile(userId: 123, siteId: 123, email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", phoneNr: "phoneNr_example", mobilePhoneNr: "mobilePhoneNr_example", company: "company_example", userTypeId: 123, address: "address_example", address2: "address2_example", address3: "address3_example", doorCode: "doorCode_example", personalId: "personalId_example", birthyear: "birthyear_example", zip: "zip_example", city: "city_example", careOf: "careOf_example", country: "country_example", countryId: 123, gender: false, newsletter: false, hasExternalAuth: false) // UserModelsWriteUserProfile | The user profile

// Create user profile
UserAPI.createUserProfile(userProfile: userProfile) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfile** | [**UserModelsWriteUserProfile**](UserModelsWriteUserProfile.md) | The user profile | 

### Return type

[**EnvelopeUserModelsReadUserProfile**](EnvelopeUserModelsReadUserProfile.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserProfile**
```swift
    open class func deleteUserProfile(email: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete user profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | Email address

// Delete user profile
UserAPI.deleteUserProfile(email: email) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String** | Email address | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserProfile**
```swift
    open class func getUserProfile(query: UserModelsUserProfileQuery, completion: @escaping (_ data: EnvelopeUserModelsReadUserProfile?, _ error: Error?) -> Void)
```

Get a specific user profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = User.Models.UserProfileQuery(userId: 123, email: "email_example") // UserModelsUserProfileQuery | The details of the query.

// Get a specific user profile
UserAPI.getUserProfile(query: query) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**UserModelsUserProfileQuery**](UserModelsUserProfileQuery.md) | The details of the query. | 

### Return type

[**EnvelopeUserModelsReadUserProfile**](EnvelopeUserModelsReadUserProfile.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserProfile**
```swift
    open class func updateUserProfile(userProfile: UserModelsWriteUserProfile, completion: @escaping (_ data: EnvelopeUserModelsReadUserProfile?, _ error: Error?) -> Void)
```

Update user profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userProfile = User.Models.Write.UserProfile(userId: 123, siteId: 123, email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", phoneNr: "phoneNr_example", mobilePhoneNr: "mobilePhoneNr_example", company: "company_example", userTypeId: 123, address: "address_example", address2: "address2_example", address3: "address3_example", doorCode: "doorCode_example", personalId: "personalId_example", birthyear: "birthyear_example", zip: "zip_example", city: "city_example", careOf: "careOf_example", country: "country_example", countryId: 123, gender: false, newsletter: false, hasExternalAuth: false) // UserModelsWriteUserProfile | The user profile

// Update user profile
UserAPI.updateUserProfile(userProfile: userProfile) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfile** | [**UserModelsWriteUserProfile**](UserModelsWriteUserProfile.md) | The user profile | 

### Return type

[**EnvelopeUserModelsReadUserProfile**](EnvelopeUserModelsReadUserProfile.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

