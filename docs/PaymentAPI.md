# PaymentAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**queryPaymentOptions**](PaymentAPI.md#querypaymentoptions) | **POST** /API/Payment/Query | Query payment options


# **queryPaymentOptions**
```swift
    open class func queryPaymentOptions(query: PaymentModelsPaymentOptionQuery, completion: @escaping (_ data: [PaymentModelsPaymentOption]?, _ error: Error?) -> Void)
```

Query payment options

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = Payment.Models.PaymentOptionQuery(siteId: 123, email: "email_example", customerTypeId: 123, countryId: 123, sum: 123) // PaymentModelsPaymentOptionQuery | The payment query

// Query payment options
PaymentAPI.queryPaymentOptions(query: query) { (response, error) in
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
 **query** | [**PaymentModelsPaymentOptionQuery**](PaymentModelsPaymentOptionQuery.md) | The payment query | 

### Return type

[**[PaymentModelsPaymentOption]**](PaymentModelsPaymentOption.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

