# CategoryAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCategory**](CategoryAPI.md#createcategory) | **POST** /API/Category | Create a new category
[**getCategoryById**](CategoryAPI.md#getcategorybyid) | **GET** /API/Category/{id} | Get a specific category
[**queryCategories**](CategoryAPI.md#querycategories) | **POST** /API/Category/Query | Query categories
[**updateCategory**](CategoryAPI.md#updatecategory) | **PUT** /API/Category/{id} | Update a category


# **createCategory**
```swift
    open class func createCategory(category: CategoryModelsWriteCategory, completion: @escaping (_ data: EnvelopeCategoryModelsReadCategory?, _ error: Error?) -> Void)
```

Create a new category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let category = Category.Models.Write.Category(parentCategoryId: 123, names: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], descriptions: [nil]) // CategoryModelsWriteCategory | The category to create.

// Create a new category
CategoryAPI.createCategory(category: category) { (response, error) in
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
 **category** | [**CategoryModelsWriteCategory**](CategoryModelsWriteCategory.md) | The category to create. | 

### Return type

[**EnvelopeCategoryModelsReadCategory**](EnvelopeCategoryModelsReadCategory.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryById**
```swift
    open class func getCategoryById(id: Int, completion: @escaping (_ data: EnvelopeCategoryModelsReadCategory?, _ error: Error?) -> Void)
```

Get a specific category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the category to get.

// Get a specific category
CategoryAPI.getCategoryById(id: id) { (response, error) in
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
 **id** | **Int** | The id of the category to get. | 

### Return type

[**EnvelopeCategoryModelsReadCategory**](EnvelopeCategoryModelsReadCategory.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryCategories**
```swift
    open class func queryCategories(query: CategoryModelsCategoryQuery, completion: @escaping (_ data: [CategoryModelsReadCategory]?, _ error: Error?) -> Void)
```

Query categories

No response envelope.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = Category.Models.CategoryQuery(createdAfter: Date(), categoryIds: [123]) // CategoryModelsCategoryQuery | The query to filter categories by.

// Query categories
CategoryAPI.queryCategories(query: query) { (response, error) in
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
 **query** | [**CategoryModelsCategoryQuery**](CategoryModelsCategoryQuery.md) | The query to filter categories by. | 

### Return type

[**[CategoryModelsReadCategory]**](CategoryModelsReadCategory.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategory**
```swift
    open class func updateCategory(id: Int, category: CategoryModelsWriteCategory, completion: @escaping (_ data: EnvelopeCategoryModelsReadCategory?, _ error: Error?) -> Void)
```

Update a category

Leaving out a property will ensure no changes are made to that property. Collection properties will delete and/or add as necessary to match the supplied data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the category to update.
let category = Category.Models.Write.Category(parentCategoryId: 123, names: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], descriptions: [nil]) // CategoryModelsWriteCategory | The category data to update.

// Update a category
CategoryAPI.updateCategory(id: id, category: category) { (response, error) in
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
 **id** | **Int** | The id of the category to update. | 
 **category** | [**CategoryModelsWriteCategory**](CategoryModelsWriteCategory.md) | The category data to update. | 

### Return type

[**EnvelopeCategoryModelsReadCategory**](EnvelopeCategoryModelsReadCategory.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

