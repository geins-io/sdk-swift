# SupplierAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupplier**](SupplierAPI.md#createsupplier) | **POST** /API/Supplier | Create a new supplier
[**getSupplierById**](SupplierAPI.md#getsupplierbyid) | **GET** /API/Supplier/{id} | Get a specific supplier
[**querySuppliers**](SupplierAPI.md#querysuppliers) | **POST** /API/Supplier/Query | Query suppliers
[**updateSupplier**](SupplierAPI.md#updatesupplier) | **PUT** /API/Supplier/{id} | Updates a supplier


# **createSupplier**
```swift
    open class func createSupplier(supplier: SupplierModelsWriteSupplier, completion: @escaping (_ data: EnvelopeSupplierModelsReadSupplier?, _ error: Error?) -> Void)
```

Create a new supplier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let supplier = Supplier.Models.Write.Supplier(name: "name_example", address1: "address1_example", address2: "address2_example", address3: "address3_example", zipCode: "zipCode_example", country: "country_example", contactPerson: "contactPerson_example", phone1: "phone1_example", phone2: "phone2_example", email: "email_example", externalId: "externalId_example") // SupplierModelsWriteSupplier | The supplier to create.

// Create a new supplier
SupplierAPI.createSupplier(supplier: supplier) { (response, error) in
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
 **supplier** | [**SupplierModelsWriteSupplier**](SupplierModelsWriteSupplier.md) | The supplier to create. | 

### Return type

[**EnvelopeSupplierModelsReadSupplier**](EnvelopeSupplierModelsReadSupplier.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSupplierById**
```swift
    open class func getSupplierById(id: Int, completion: @escaping (_ data: EnvelopeSupplierModelsReadSupplier?, _ error: Error?) -> Void)
```

Get a specific supplier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the supplier to get.

// Get a specific supplier
SupplierAPI.getSupplierById(id: id) { (response, error) in
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
 **id** | **Int** | The id of the supplier to get. | 

### Return type

[**EnvelopeSupplierModelsReadSupplier**](EnvelopeSupplierModelsReadSupplier.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **querySuppliers**
```swift
    open class func querySuppliers(query: SupplierModelsSupplierQuery, completion: @escaping (_ data: [SupplierModelsReadSupplier]?, _ error: Error?) -> Void)
```

Query suppliers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = Supplier.Models.SupplierQuery(nameContains: "nameContains_example", externalIds: ["externalIds_example"]) // SupplierModelsSupplierQuery | The details of the query

// Query suppliers
SupplierAPI.querySuppliers(query: query) { (response, error) in
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
 **query** | [**SupplierModelsSupplierQuery**](SupplierModelsSupplierQuery.md) | The details of the query | 

### Return type

[**[SupplierModelsReadSupplier]**](SupplierModelsReadSupplier.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSupplier**
```swift
    open class func updateSupplier(id: Int, supplier: SupplierModelsWriteSupplier, completion: @escaping (_ data: EnvelopeSupplierModelsReadSupplier?, _ error: Error?) -> Void)
```

Updates a supplier

Leaving out a property will ensure no changes are made to that property.  Collection properties will delete and/or add as necessary to match the supplied data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The id of the supplier to update.
let supplier = Supplier.Models.Write.Supplier(name: "name_example", address1: "address1_example", address2: "address2_example", address3: "address3_example", zipCode: "zipCode_example", country: "country_example", contactPerson: "contactPerson_example", phone1: "phone1_example", phone2: "phone2_example", email: "email_example", externalId: "externalId_example") // SupplierModelsWriteSupplier | The supplier data to update.

// Updates a supplier
SupplierAPI.updateSupplier(id: id, supplier: supplier) { (response, error) in
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
 **id** | **Int** | The id of the supplier to update. | 
 **supplier** | [**SupplierModelsWriteSupplier**](SupplierModelsWriteSupplier.md) | The supplier data to update. | 

### Return type

[**EnvelopeSupplierModelsReadSupplier**](EnvelopeSupplierModelsReadSupplier.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

