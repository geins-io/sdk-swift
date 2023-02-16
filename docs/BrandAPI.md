# BrandAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBrand**](BrandAPI.md#createbrand) | **POST** /API/Brand | Create a new brand
[**getBrandById**](BrandAPI.md#getbrandbyid) | **GET** /API/Brand/{id} | Get a specific brand
[**queryBrands**](BrandAPI.md#querybrands) | **POST** /API/Brand/Query | Query brands
[**updateBrand**](BrandAPI.md#updatebrand) | **PUT** /API/Brand/{id} | Updates a brand


# **createBrand**
```swift
    open class func createBrand(brand: BrandModelsWriteBrand, completion: @escaping (_ data: EnvelopeBrandModelsReadBrand?, _ error: Error?) -> Void)
```

Create a new brand

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = Brand.Models.Write.Brand(name: "name_example", externalId: "externalId_example", descriptions: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")]) // BrandModelsWriteBrand | The brand to create.

// Create a new brand
BrandAPI.createBrand(brand: brand) { (response, error) in
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
 **brand** | [**BrandModelsWriteBrand**](BrandModelsWriteBrand.md) | The brand to create. | 

### Return type

[**EnvelopeBrandModelsReadBrand**](EnvelopeBrandModelsReadBrand.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandById**
```swift
    open class func getBrandById(id: Int, completion: @escaping (_ data: EnvelopeBrandModelsReadBrand?, _ error: Error?) -> Void)
```

Get a specific brand

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the brand to get.

// Get a specific brand
BrandAPI.getBrandById(id: id) { (response, error) in
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
 **id** | **Int** | The id of the brand to get. | 

### Return type

[**EnvelopeBrandModelsReadBrand**](EnvelopeBrandModelsReadBrand.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryBrands**
```swift
    open class func queryBrands(query: BrandModelsBrandQuery, completion: @escaping (_ data: [BrandModelsReadBrand]?, _ error: Error?) -> Void)
```

Query brands

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = Brand.Models.BrandQuery(createdAfter: Date(), brandIds: [123], externalIds: ["externalIds_example"]) // BrandModelsBrandQuery | The details of the query.

// Query brands
BrandAPI.queryBrands(query: query) { (response, error) in
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
 **query** | [**BrandModelsBrandQuery**](BrandModelsBrandQuery.md) | The details of the query. | 

### Return type

[**[BrandModelsReadBrand]**](BrandModelsReadBrand.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBrand**
```swift
    open class func updateBrand(id: Int, brand: BrandModelsWriteBrand, completion: @escaping (_ data: EnvelopeBrandModelsReadBrand?, _ error: Error?) -> Void)
```

Updates a brand

Leaving out a property will ensure no changes are made to that property.  Collection properties will delete and/or add as necessary to match the supplied data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the brand to update.
let brand = Brand.Models.Write.Brand(name: "name_example", externalId: "externalId_example", descriptions: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")]) // BrandModelsWriteBrand | The brand data to update.

// Updates a brand
BrandAPI.updateBrand(id: id, brand: brand) { (response, error) in
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
 **id** | **Int** | The id of the brand to update. | 
 **brand** | [**BrandModelsWriteBrand**](BrandModelsWriteBrand.md) | The brand data to update. | 

### Return type

[**EnvelopeBrandModelsReadBrand**](EnvelopeBrandModelsReadBrand.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

