# VariantAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProductToVariantGroup**](VariantAPI.md#addproducttovariantgroup) | **PUT** /API/VariantGroup/{groupId}/{productId} | Adds a product to an existing group
[**addProductToVariantGroupByProductId**](VariantAPI.md#addproducttovariantgroupbyproductid) | **PUT** /API/Variant/{productId1}/{productId2} | Adds a product to an existing group
[**createVariantGroup**](VariantAPI.md#createvariantgroup) | **POST** /API/VariantGroup | Create a new variant group
[**createVariantGroupWithProduct**](VariantAPI.md#createvariantgroupwithproduct) | **POST** /API/Variant/{productId}/VariantGroup | Create a new group for the provided product id
[**deleteVariantGroup**](VariantAPI.md#deletevariantgroup) | **DELETE** /API/VariantGroup/{groupId} | Delete an entire variant group
[**deleteVariantGroupByProductId**](VariantAPI.md#deletevariantgroupbyproductid) | **DELETE** /API/Variant/{productId}/VariantGroup | Delete an entire variant group
[**getVariantGroup**](VariantAPI.md#getvariantgroup) | **GET** /API/VariantGroup/{groupId} | Get a specific variant group
[**getVariantGroupByProductId**](VariantAPI.md#getvariantgroupbyproductid) | **GET** /API/Variant/{productId}/VariantGroup | Get the variant group for the provided id
[**getVariantLabels**](VariantAPI.md#getvariantlabels) | **GET** /API/Variant/Labels | Get all valid variant labels
[**removeProductFromVariantGroup**](VariantAPI.md#removeproductfromvariantgroup) | **DELETE** /API/Variant/{productId} | Remove a product from its variant group
[**updateVariant**](VariantAPI.md#updatevariant) | **PUT** /API/Variant/{productId} | Adds the variant details for the product with the provided ID
[**updateVariantGroup**](VariantAPI.md#updatevariantgroup) | **PUT** /API/VariantGroup/{groupId} | Updates the settings of a group


# **addProductToVariantGroup**
```swift
    open class func addProductToVariantGroup(groupId: Int, productId: String, variant: [VariantModelsWriteVariant], productIdType: ProductIdType_addProductToVariantGroup? = nil, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Adds a product to an existing group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groupId = 987 // Int | The ID of the group to which a product should be added
let productId = "productId_example" // String | The ID of the product to be added to the target group.
let variant = [Variant.Models.Write.Variant(label: "label_example", value: "value_example")] // [VariantModelsWriteVariant] | The variant details.
let productIdType = 987 // Int | The type of product id provided. (optional)
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Adds a product to an existing group
VariantAPI.addProductToVariantGroup(groupId: groupId, productId: productId, variant: variant, productIdType: productIdType, include: include) { (response, error) in
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
 **groupId** | **Int** | The ID of the group to which a product should be added | 
 **productId** | **String** | The ID of the product to be added to the target group. | 
 **variant** | [**[VariantModelsWriteVariant]**](VariantModelsWriteVariant.md) | The variant details. | 
 **productIdType** | **Int** | The type of product id provided. | [optional] 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addProductToVariantGroupByProductId**
```swift
    open class func addProductToVariantGroupByProductId(productId1: String, productId2: String, productIdType: ProductIdType_addProductToVariantGroupByProductId? = nil, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Adds a product to an existing group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId1 = "productId1_example" // String | The ID of a product belonging to the target group.
let productId2 = "productId2_example" // String | The ID of the product to be added to the target group.
let productIdType = 987 // Int | The type of product id provided. (optional)
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Adds a product to an existing group
VariantAPI.addProductToVariantGroupByProductId(productId1: productId1, productId2: productId2, productIdType: productIdType, include: include) { (response, error) in
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
 **productId1** | **String** | The ID of a product belonging to the target group. | 
 **productId2** | **String** | The ID of the product to be added to the target group. | 
 **productIdType** | **Int** | The type of product id provided. | [optional] 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVariantGroup**
```swift
    open class func createVariantGroup(variantGroup: VariantModelsWriteVariantGroup, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Create a new variant group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let variantGroup = Variant.Models.Write.VariantGroup(name: "name_example", collapseInLists: false, variantLabels: ["variantLabels_example"], products: [Product.Models.Write.Product(articleNumber: "articleNumber_example", names: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], active: false, purchasePrice: 123, purchasePriceCurrency: "purchasePriceCurrency_example", shortTexts: [nil], longTexts: [nil], techTexts: [nil], brandId: 123, supplierId: 123, items: [Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example")], categoryIds: [123], parameterValues: [ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [nil])], variants: [Variant.Models.Write.Variant(label: "label_example", value: "value_example")], markets: [Market.Models.Market(id: 123, name: "name_example", displayName: "displayName_example", currency: "currency_example", vatRate: 123, marketPrefix: "marketPrefix_example", countryId: 123, currencyId: 123, currencyRate: 123, languageId: 123, language: "language_example")], freightClassId: 123, intrastatCode: "intrastatCode_example", countryOfOrigin: "countryOfOrigin_example", variantGroupId: 123, vat: 123, vatType: "vatType_example", externalId: "externalId_example", activationDate: Date())]) // VariantModelsWriteVariantGroup | The settings for the new group.
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Create a new variant group
VariantAPI.createVariantGroup(variantGroup: variantGroup, include: include) { (response, error) in
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
 **variantGroup** | [**VariantModelsWriteVariantGroup**](VariantModelsWriteVariantGroup.md) | The settings for the new group. | 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVariantGroupWithProduct**
```swift
    open class func createVariantGroupWithProduct(productId: String, variantGroup: VariantModelsWriteVariantGroup, productIdType: ProductIdType_createVariantGroupWithProduct? = nil, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Create a new group for the provided product id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product, for which to create a group.
let variantGroup = Variant.Models.Write.VariantGroup(name: "name_example", collapseInLists: false, variantLabels: ["variantLabels_example"], products: [Product.Models.Write.Product(articleNumber: "articleNumber_example", names: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], active: false, purchasePrice: 123, purchasePriceCurrency: "purchasePriceCurrency_example", shortTexts: [nil], longTexts: [nil], techTexts: [nil], brandId: 123, supplierId: 123, items: [Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example")], categoryIds: [123], parameterValues: [ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [nil])], variants: [Variant.Models.Write.Variant(label: "label_example", value: "value_example")], markets: [Market.Models.Market(id: 123, name: "name_example", displayName: "displayName_example", currency: "currency_example", vatRate: 123, marketPrefix: "marketPrefix_example", countryId: 123, currencyId: 123, currencyRate: 123, languageId: 123, language: "language_example")], freightClassId: 123, intrastatCode: "intrastatCode_example", countryOfOrigin: "countryOfOrigin_example", variantGroupId: 123, vat: 123, vatType: "vatType_example", externalId: "externalId_example", activationDate: Date())]) // VariantModelsWriteVariantGroup | The settings for the new group.
let productIdType = 987 // Int | The type of product id provided. (optional)
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Create a new group for the provided product id
VariantAPI.createVariantGroupWithProduct(productId: productId, variantGroup: variantGroup, productIdType: productIdType, include: include) { (response, error) in
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
 **productId** | **String** | The id of the product, for which to create a group. | 
 **variantGroup** | [**VariantModelsWriteVariantGroup**](VariantModelsWriteVariantGroup.md) | The settings for the new group. | 
 **productIdType** | **Int** | The type of product id provided. | [optional] 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVariantGroup**
```swift
    open class func deleteVariantGroup(groupId: Int, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Delete an entire variant group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groupId = 987 // Int | The ID of the group to delete

// Delete an entire variant group
VariantAPI.deleteVariantGroup(groupId: groupId) { (response, error) in
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
 **groupId** | **Int** | The ID of the group to delete | 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVariantGroupByProductId**
```swift
    open class func deleteVariantGroupByProductId(productId: String, productIdType: ProductIdType_deleteVariantGroupByProductId? = nil, completion: @escaping (_ data: Envelope?, _ error: Error?) -> Void)
```

Delete an entire variant group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of a product that belongs to the group to remove.
let productIdType = 987 // Int | The type of product id provided. (optional)

// Delete an entire variant group
VariantAPI.deleteVariantGroupByProductId(productId: productId, productIdType: productIdType) { (response, error) in
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
 **productId** | **String** | The id of a product that belongs to the group to remove. | 
 **productIdType** | **Int** | The type of product id provided. | [optional] 

### Return type

[**Envelope**](Envelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariantGroup**
```swift
    open class func getVariantGroup(groupId: Int, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Get a specific variant group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groupId = 987 // Int | The ID of the group to get
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Get a specific variant group
VariantAPI.getVariantGroup(groupId: groupId, include: include) { (response, error) in
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
 **groupId** | **Int** | The ID of the group to get | 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariantGroupByProductId**
```swift
    open class func getVariantGroupByProductId(productId: String, productIdType: ProductIdType_getVariantGroupByProductId? = nil, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Get the variant group for the provided id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product, for which to get the group.
let productIdType = 987 // Int | The type of id. (optional)
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Get the variant group for the provided id
VariantAPI.getVariantGroupByProductId(productId: productId, productIdType: productIdType, include: include) { (response, error) in
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
 **productId** | **String** | The id of the product, for which to get the group. | 
 **productIdType** | **Int** | The type of id. | [optional] 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariantLabels**
```swift
    open class func getVariantLabels(completion: @escaping (_ data: EnvelopeString?, _ error: Error?) -> Void)
```

Get all valid variant labels

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all valid variant labels
VariantAPI.getVariantLabels() { (response, error) in
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

[**EnvelopeString**](EnvelopeString.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeProductFromVariantGroup**
```swift
    open class func removeProductFromVariantGroup(productId: String, productIdType: ProductIdType_removeProductFromVariantGroup? = nil, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Remove a product from its variant group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product to remove from group.
let productIdType = 987 // Int | The type of product id provided. (optional)
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Remove a product from its variant group
VariantAPI.removeProductFromVariantGroup(productId: productId, productIdType: productIdType, include: include) { (response, error) in
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
 **productId** | **String** | The id of the product to remove from group. | 
 **productIdType** | **Int** | The type of product id provided. | [optional] 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVariant**
```swift
    open class func updateVariant(productId: String, variant: [VariantModelsWriteVariant], productIdType: ProductIdType_updateVariant? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariant?, _ error: Error?) -> Void)
```

Adds the variant details for the product with the provided ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The ID of the product for which to update the variant details.
let variant = [Variant.Models.Write.Variant(label: "label_example", value: "value_example")] // [VariantModelsWriteVariant] | The variant details.
let productIdType = 987 // Int | The type of product id provided. (optional)

// Adds the variant details for the product with the provided ID
VariantAPI.updateVariant(productId: productId, variant: variant, productIdType: productIdType) { (response, error) in
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
 **productId** | **String** | The ID of the product for which to update the variant details. | 
 **variant** | [**[VariantModelsWriteVariant]**](VariantModelsWriteVariant.md) | The variant details. | 
 **productIdType** | **Int** | The type of product id provided. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariant**](EnvelopeVariantModelsReadVariant.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVariantGroup**
```swift
    open class func updateVariantGroup(groupId: Int, variantGroup: VariantModelsWriteVariantGroup, include: String? = nil, completion: @escaping (_ data: EnvelopeVariantModelsReadVariantGroup?, _ error: Error?) -> Void)
```

Updates the settings of a group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groupId = 987 // Int | The ID of the group to update
let variantGroup = Variant.Models.Write.VariantGroup(name: "name_example", collapseInLists: false, variantLabels: ["variantLabels_example"], products: [Product.Models.Write.Product(articleNumber: "articleNumber_example", names: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], active: false, purchasePrice: 123, purchasePriceCurrency: "purchasePriceCurrency_example", shortTexts: [nil], longTexts: [nil], techTexts: [nil], brandId: 123, supplierId: 123, items: [Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example")], categoryIds: [123], parameterValues: [ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [nil])], variants: [Variant.Models.Write.Variant(label: "label_example", value: "value_example")], markets: [Market.Models.Market(id: 123, name: "name_example", displayName: "displayName_example", currency: "currency_example", vatRate: 123, marketPrefix: "marketPrefix_example", countryId: 123, currencyId: 123, currencyRate: 123, languageId: 123, language: "language_example")], freightClassId: 123, intrastatCode: "intrastatCode_example", countryOfOrigin: "countryOfOrigin_example", variantGroupId: 123, vat: 123, vatType: "vatType_example", externalId: "externalId_example", activationDate: Date())]) // VariantModelsWriteVariantGroup | The new settings for the group
let include = "include_example" // String | Comma separated list of product child collections to also include with the variant group. Set to \"product\" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Updates the settings of a group
VariantAPI.updateVariantGroup(groupId: groupId, variantGroup: variantGroup, include: include) { (response, error) in
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
 **groupId** | **Int** | The ID of the group to update | 
 **variantGroup** | [**VariantModelsWriteVariantGroup**](VariantModelsWriteVariantGroup.md) | The new settings for the group | 
 **include** | **String** | Comma separated list of product child collections to also include with the variant group. Set to \&quot;product\&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

