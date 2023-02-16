# PageAreaAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrUpdateAPageArea**](PageAreaAPI.md#createorupdateapagearea) | **POST** /API/PageArea | Create or update a page area
[**createOrUpdatePageAreaFamily**](PageAreaAPI.md#createorupdatepageareafamily) | **POST** /API/PageAreaFamily | Create or update a page area family
[**getPageArea**](PageAreaAPI.md#getpagearea) | **GET** /API/PageArea/{name} | Get a specific page area
[**getPageAreaFamily**](PageAreaAPI.md#getpageareafamily) | **GET** /API/PageAreaFamily/{familyId} | Get a specific page area family
[**listPageAreaFamilies**](PageAreaAPI.md#listpageareafamilies) | **GET** /API/PageAreaFamily/List | Gets a list of all page area families, including nested data


# **createOrUpdateAPageArea**
```swift
    open class func createOrUpdateAPageArea(area: PageAreaModelsWritePageArea, completion: @escaping (_ data: EnvelopePageAreaModelsReadPageArea?, _ error: Error?) -> Void)
```

Create or update a page area

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let area = PageArea.Models.Write.PageArea(index: 123, name: "name_example", familyId: 123, settings: System.Nullable-ValidationConfiguration(lazyLoadConfiguration: PageWidget.LazyLoadSetup.LazyLoadConfiguration(enableLazyloadMobile: false, eagerLoadStepsMobile: 123, enableLazyloadDesktop: false, eagerLoadStepsDesktop: 123), lazyLoadCollectionConfigurations: [PageWidget.LazyLoadSetup.LazyLoadCollectionConfiguration(collectionName: "collectionName_example", enableLazyloadMobile: false, eagerLoadStepsMobile: 123, enableLazyloadDesktop: false, eagerLoadStepsDesktop: 123)], widgetRestrictions: "TODO", containerRestrictions: ContainerRestrictionSetup.ContainerRestrictionConfiguration(allowedLayouts: [123], bannedWidgets: [123]))) // PageAreaModelsWritePageArea | The area model to create or update.

// Create or update a page area
PageAreaAPI.createOrUpdateAPageArea(area: area) { (response, error) in
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
 **area** | [**PageAreaModelsWritePageArea**](PageAreaModelsWritePageArea.md) | The area model to create or update. | 

### Return type

[**EnvelopePageAreaModelsReadPageArea**](EnvelopePageAreaModelsReadPageArea.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrUpdatePageAreaFamily**
```swift
    open class func createOrUpdatePageAreaFamily(family: PageAreaModelsWritePageAreaFamily, completion: @escaping (_ data: EnvelopePageAreaModelsReadPageAreaFamily?, _ error: Error?) -> Void)
```

Create or update a page area family

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let family = PageArea.Models.Write.PageAreaFamily(id: 123, name: "name_example", filterableProperties: ["filterableProperties_example"], areas: [PageArea.Models.Write.PageArea(index: 123, name: "name_example", familyId: 123, settings: System.Nullable-ValidationConfiguration(lazyLoadConfiguration: PageWidget.LazyLoadSetup.LazyLoadConfiguration(enableLazyloadMobile: false, eagerLoadStepsMobile: 123, enableLazyloadDesktop: false, eagerLoadStepsDesktop: 123), lazyLoadCollectionConfigurations: [PageWidget.LazyLoadSetup.LazyLoadCollectionConfiguration(collectionName: "collectionName_example", enableLazyloadMobile: false, eagerLoadStepsMobile: 123, enableLazyloadDesktop: false, eagerLoadStepsDesktop: 123)], widgetRestrictions: "TODO", containerRestrictions: ContainerRestrictionSetup.ContainerRestrictionConfiguration(allowedLayouts: [123], bannedWidgets: [123])))]) // PageAreaModelsWritePageAreaFamily | The family model to create or update.

// Create or update a page area family
PageAreaAPI.createOrUpdatePageAreaFamily(family: family) { (response, error) in
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
 **family** | [**PageAreaModelsWritePageAreaFamily**](PageAreaModelsWritePageAreaFamily.md) | The family model to create or update. | 

### Return type

[**EnvelopePageAreaModelsReadPageAreaFamily**](EnvelopePageAreaModelsReadPageAreaFamily.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPageArea**
```swift
    open class func getPageArea(name: String, completion: @escaping (_ data: PageAreaModelsReadPageArea?, _ error: Error?) -> Void)
```

Get a specific page area

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the page area to get.

// Get a specific page area
PageAreaAPI.getPageArea(name: name) { (response, error) in
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
 **name** | **String** | The name of the page area to get. | 

### Return type

[**PageAreaModelsReadPageArea**](PageAreaModelsReadPageArea.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPageAreaFamily**
```swift
    open class func getPageAreaFamily(familyId: Int, completion: @escaping (_ data: PageAreaModelsReadPageAreaFamily?, _ error: Error?) -> Void)
```

Get a specific page area family

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let familyId = 987 // Int | The id of the page area family to get.

// Get a specific page area family
PageAreaAPI.getPageAreaFamily(familyId: familyId) { (response, error) in
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
 **familyId** | **Int** | The id of the page area family to get. | 

### Return type

[**PageAreaModelsReadPageAreaFamily**](PageAreaModelsReadPageAreaFamily.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPageAreaFamilies**
```swift
    open class func listPageAreaFamilies(completion: @escaping (_ data: [PageAreaModelsReadPageAreaFamily]?, _ error: Error?) -> Void)
```

Gets a list of all page area families, including nested data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Gets a list of all page area families, including nested data
PageAreaAPI.listPageAreaFamilies() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[PageAreaModelsReadPageAreaFamily]**](PageAreaModelsReadPageAreaFamily.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

