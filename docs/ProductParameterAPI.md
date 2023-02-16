# ProductParameterAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchReplaceProductParameterValues**](ProductParameterAPI.md#batchreplaceproductparametervalues) | **POST** /API/ProductParameter/Values | Replace multiple product parameter values
[**batchUpdateProductParameterValues**](ProductParameterAPI.md#batchupdateproductparametervalues) | **PUT** /API/ProductParameter/Values | Update multiple product parameter values
[**createOrUpdateProductParameterValue**](ProductParameterAPI.md#createorupdateproductparametervalue) | **POST** /API/ProductParameter/Value | Create or update a new product parameter value
[**createProductParameter**](ProductParameterAPI.md#createproductparameter) | **POST** /API/ProductParameter | Create a new product parameter
[**createProductParameterGroup**](ProductParameterAPI.md#createproductparametergroup) | **POST** /API/ProductParameter/Group | Create a new product parameter group
[**createProductParameterPredefinedValue**](ProductParameterAPI.md#createproductparameterpredefinedvalue) | **POST** /API/ProductParameter/PredefinedValue | Create a new predefined value for a product parameter
[**getProductParameterById**](ProductParameterAPI.md#getproductparameterbyid) | **GET** /API/ProductParameter/{id} | Get a specific product parameter
[**getProductParameterGroupById**](ProductParameterAPI.md#getproductparametergroupbyid) | **GET** /API/ProductParameter/Group/{id} | Get a specific product parameter group
[**getProductParameterPredefinedValue**](ProductParameterAPI.md#getproductparameterpredefinedvalue) | **GET** /API/ProductParameter/PredefinedValue/{id} | Get a specific predefined value for a product parameter
[**getProductParameterValue**](ProductParameterAPI.md#getproductparametervalue) | **GET** /API/ProductParameter/Value/{id} | Get a specific product parameter value
[**updateProductParameter**](ProductParameterAPI.md#updateproductparameter) | **PUT** /API/ProductParameter/{id} | Updates a product parameter
[**updateProductParameterGroup**](ProductParameterAPI.md#updateproductparametergroup) | **PUT** /API/ProductParameter/Group/{id} | Update a product parameter group


# **batchReplaceProductParameterValues**
```swift
    open class func batchReplaceProductParameterValues(productParameterBatch: ProductParameterModelsWriteProductParameterValueBatch, completion: @escaping (_ data: Envelope?, _ error: Error?) -> Void)
```

Replace multiple product parameter values

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productParameterBatch = ProductParameter.Models.Write.ProductParameterValueBatch(productParameterValues: [ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")])]) // ProductParameterModelsWriteProductParameterValueBatch | The product parameter values to replace.

// Replace multiple product parameter values
ProductParameterAPI.batchReplaceProductParameterValues(productParameterBatch: productParameterBatch) { (response, error) in
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
 **productParameterBatch** | [**ProductParameterModelsWriteProductParameterValueBatch**](ProductParameterModelsWriteProductParameterValueBatch.md) | The product parameter values to replace. | 

### Return type

[**Envelope**](Envelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchUpdateProductParameterValues**
```swift
    open class func batchUpdateProductParameterValues(productParameterBatch: ProductParameterModelsWriteProductParameterValueBatch, completion: @escaping (_ data: Envelope?, _ error: Error?) -> Void)
```

Update multiple product parameter values

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productParameterBatch = ProductParameter.Models.Write.ProductParameterValueBatch(productParameterValues: [ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")])]) // ProductParameterModelsWriteProductParameterValueBatch | The product parameter values update.

// Update multiple product parameter values
ProductParameterAPI.batchUpdateProductParameterValues(productParameterBatch: productParameterBatch) { (response, error) in
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
 **productParameterBatch** | [**ProductParameterModelsWriteProductParameterValueBatch**](ProductParameterModelsWriteProductParameterValueBatch.md) | The product parameter values update. | 

### Return type

[**Envelope**](Envelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrUpdateProductParameterValue**
```swift
    open class func createOrUpdateProductParameterValue(productParameterValue: ProductParameterModelsWriteProductParameterValue, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameterValue?, _ error: Error?) -> Void)
```

Create or update a new product parameter value

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productParameterValue = ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")]) // ProductParameterModelsWriteProductParameterValue | The product parameter value to create or update.

// Create or update a new product parameter value
ProductParameterAPI.createOrUpdateProductParameterValue(productParameterValue: productParameterValue) { (response, error) in
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
 **productParameterValue** | [**ProductParameterModelsWriteProductParameterValue**](ProductParameterModelsWriteProductParameterValue.md) | The product parameter value to create or update. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterValue**](EnvelopeProductParameterModelsReadProductParameterValue.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProductParameter**
```swift
    open class func createProductParameter(productParameter: ProductParameterModelsWriteProductParameter, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameter?, _ error: Error?) -> Void)
```

Create a new product parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productParameter = ProductParameter.Models.Write.ProductParameter(parameterId: 123, groupId: 123, parameterType: 123, name: "name_example", localizedNames: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")]) // ProductParameterModelsWriteProductParameter | The product parameter to create.

// Create a new product parameter
ProductParameterAPI.createProductParameter(productParameter: productParameter) { (response, error) in
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
 **productParameter** | [**ProductParameterModelsWriteProductParameter**](ProductParameterModelsWriteProductParameter.md) | The product parameter to create. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameter**](EnvelopeProductParameterModelsReadProductParameter.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProductParameterGroup**
```swift
    open class func createProductParameterGroup(productParameterGroup: ProductParameterModelsWriteProductParameterGroup, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameterGroup?, _ error: Error?) -> Void)
```

Create a new product parameter group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productParameterGroup = ProductParameter.Models.Write.ProductParameterGroup(name: "name_example", localizedNames: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], parameterIds: [123]) // ProductParameterModelsWriteProductParameterGroup | The product parameter group to create.

// Create a new product parameter group
ProductParameterAPI.createProductParameterGroup(productParameterGroup: productParameterGroup) { (response, error) in
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
 **productParameterGroup** | [**ProductParameterModelsWriteProductParameterGroup**](ProductParameterModelsWriteProductParameterGroup.md) | The product parameter group to create. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterGroup**](EnvelopeProductParameterModelsReadProductParameterGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProductParameterPredefinedValue**
```swift
    open class func createProductParameterPredefinedValue(productParameterPredefinedValue: ProductParameterModelsWriteProductParameterPredefinedValue, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameterPredefinedValue?, _ error: Error?) -> Void)
```

Create a new predefined value for a product parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productParameterPredefinedValue = ProductParameter.Models.Write.ProductParameterPredefinedValue(parameterId: 123, predefinedValueId: 123, name: "name_example", localizedNames: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")]) // ProductParameterModelsWriteProductParameterPredefinedValue | The predefined value to create.

// Create a new predefined value for a product parameter
ProductParameterAPI.createProductParameterPredefinedValue(productParameterPredefinedValue: productParameterPredefinedValue) { (response, error) in
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
 **productParameterPredefinedValue** | [**ProductParameterModelsWriteProductParameterPredefinedValue**](ProductParameterModelsWriteProductParameterPredefinedValue.md) | The predefined value to create. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterPredefinedValue**](EnvelopeProductParameterModelsReadProductParameterPredefinedValue.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductParameterById**
```swift
    open class func getProductParameterById(id: Int, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameter?, _ error: Error?) -> Void)
```

Get a specific product parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the product parameter to get.

// Get a specific product parameter
ProductParameterAPI.getProductParameterById(id: id) { (response, error) in
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
 **id** | **Int** | The id of the product parameter to get. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameter**](EnvelopeProductParameterModelsReadProductParameter.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductParameterGroupById**
```swift
    open class func getProductParameterGroupById(id: Int, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameterGroup?, _ error: Error?) -> Void)
```

Get a specific product parameter group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the product parameter group to get.

// Get a specific product parameter group
ProductParameterAPI.getProductParameterGroupById(id: id) { (response, error) in
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
 **id** | **Int** | The id of the product parameter group to get. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterGroup**](EnvelopeProductParameterModelsReadProductParameterGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductParameterPredefinedValue**
```swift
    open class func getProductParameterPredefinedValue(id: Int, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameterValue?, _ error: Error?) -> Void)
```

Get a specific predefined value for a product parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the predefined value to get.

// Get a specific predefined value for a product parameter
ProductParameterAPI.getProductParameterPredefinedValue(id: id) { (response, error) in
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
 **id** | **Int** | The id of the predefined value to get. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterValue**](EnvelopeProductParameterModelsReadProductParameterValue.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductParameterValue**
```swift
    open class func getProductParameterValue(id: Int, predefinedValueId: String? = nil, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameterValue?, _ error: Error?) -> Void)
```

Get a specific product parameter value

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the product parameter value to get.
let predefinedValueId = "predefinedValueId_example" // String | The predefined value id of the product parameter value to get. Only applicable for {ProductParameter.Models.ProductParameterType.Multi}. (optional)

// Get a specific product parameter value
ProductParameterAPI.getProductParameterValue(id: id, predefinedValueId: predefinedValueId) { (response, error) in
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
 **id** | **Int** | The id of the product parameter value to get. | 
 **predefinedValueId** | **String** | The predefined value id of the product parameter value to get. Only applicable for {ProductParameter.Models.ProductParameterType.Multi}. | [optional] 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterValue**](EnvelopeProductParameterModelsReadProductParameterValue.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductParameter**
```swift
    open class func updateProductParameter(id: Int, productParameter: ProductParameterModelsWriteProductParameter, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameter?, _ error: Error?) -> Void)
```

Updates a product parameter

Leaving out a property will ensure no changes are made to that property. Collection properties will delete and/or add as necessary to match the supplied data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the product parameter to update.
let productParameter = ProductParameter.Models.Write.ProductParameter(parameterId: 123, groupId: 123, parameterType: 123, name: "name_example", localizedNames: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")]) // ProductParameterModelsWriteProductParameter | The product parameter data to update.

// Updates a product parameter
ProductParameterAPI.updateProductParameter(id: id, productParameter: productParameter) { (response, error) in
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
 **id** | **Int** | The id of the product parameter to update. | 
 **productParameter** | [**ProductParameterModelsWriteProductParameter**](ProductParameterModelsWriteProductParameter.md) | The product parameter data to update. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameter**](EnvelopeProductParameterModelsReadProductParameter.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductParameterGroup**
```swift
    open class func updateProductParameterGroup(id: Int, productParameterGroup: ProductParameterModelsWriteProductParameterGroup, completion: @escaping (_ data: EnvelopeProductParameterModelsReadProductParameterGroup?, _ error: Error?) -> Void)
```

Update a product parameter group

Leaving out a property will ensure no changes are made to that property. Collection properties will delete and/or add as necessary to match the supplied data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the product parameter group to update.
let productParameterGroup = ProductParameter.Models.Write.ProductParameterGroup(name: "name_example", localizedNames: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], parameterIds: [123]) // ProductParameterModelsWriteProductParameterGroup | The product parameter group data to update.

// Update a product parameter group
ProductParameterAPI.updateProductParameterGroup(id: id, productParameterGroup: productParameterGroup) { (response, error) in
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
 **id** | **Int** | The id of the product parameter group to update. | 
 **productParameterGroup** | [**ProductParameterModelsWriteProductParameterGroup**](ProductParameterModelsWriteProductParameterGroup.md) | The product parameter group data to update. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterGroup**](EnvelopeProductParameterModelsReadProductParameterGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

