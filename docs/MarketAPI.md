# MarketAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMarketById**](MarketAPI.md#getmarketbyid) | **GET** /API/Market/{marketId} | Get a specific market
[**listMarkets**](MarketAPI.md#listmarkets) | **GET** /API/Market/List | Gets a list of all markets


# **getMarketById**
```swift
    open class func getMarketById(marketId: String, marketIdType: MarketIdType_getMarketById? = nil, completion: @escaping (_ data: EnvelopeMarketModelsMarket?, _ error: Error?) -> Void)
```

Get a specific market

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let marketId = "marketId_example" // String | The id of the market to get.
let marketIdType = 987 // Int | The type of market id supplied. See {Market.Models.MarketIdType} for valid options. (optional)

// Get a specific market
MarketAPI.getMarketById(marketId: marketId, marketIdType: marketIdType) { (response, error) in
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
 **marketId** | **String** | The id of the market to get. | 
 **marketIdType** | **Int** | The type of market id supplied. See {Market.Models.MarketIdType} for valid options. | [optional] 

### Return type

[**EnvelopeMarketModelsMarket**](EnvelopeMarketModelsMarket.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMarkets**
```swift
    open class func listMarkets(completion: @escaping (_ data: MarketModelsMarket?, _ error: Error?) -> Void)
```

Gets a list of all markets

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Gets a list of all markets
MarketAPI.listMarkets() { (response, error) in
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

[**MarketModelsMarket**](MarketModelsMarket.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

