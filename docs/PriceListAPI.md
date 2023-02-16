# PriceListAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listPriceLists**](PriceListAPI.md#listpricelists) | **GET** /API/PriceList/List | Get all price list definitions
[**updatePricelistPrices**](PriceListAPI.md#updatepricelistprices) | **PUT** /API/PriceList/Price | Updates price list prices


# **listPriceLists**
```swift
    open class func listPriceLists(completion: @escaping (_ data: [PriceListModelsPriceList]?, _ error: Error?) -> Void)
```

Get all price list definitions

- Prices on campaign price lists (id: xxxxxx2) can not be updated. Any such entries will be ignored.  - ID for Ordinary, Sale and Campaign price lists starts from 1000000.   The ID is calculated by this formula, Market ID * 1000000 + Type of price list (Ordinary=0, Sale=1, Capaign=2)  So :  Ordinary price list for market with ID 1 has ID = 1000000  Sale price list for market with ID 1 has ID = 1000001  Campaign price list for market with ID 1 has ID = 1000002  Ordinary price list for market with ID 2 has ID = 2000000  And so on ...

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all price list definitions
PriceListAPI.listPriceLists() { (response, error) in
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

[**[PriceListModelsPriceList]**](PriceListModelsPriceList.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePricelistPrices**
```swift
    open class func updatePricelistPrices(priceListPrices: [PriceListModelsWritePriceListPrice], productIdType: ProductIdType_updatePricelistPrices? = nil, pricesIncVat: Bool? = nil, completion: @escaping (_ data: PriceListModelsPriceListPriceResponse?, _ error: Error?) -> Void)
```

Updates price list prices

- Prices on campaign price lists (id: xxxxxx2) can not be updated. Any such entries will be ignored.  - ID for Ordinary, Sale and Campaign price lists starts from 1000000.   The ID is calculated by this formula, Market ID * 1000000 + Type of price list (Ordinary=0, Sale=1, Capaign=2)  So :  Ordinary price list for market with ID 1 has ID = 1000000  Sale price list for market with ID 1 has ID = 1000001  Campaign price list for market with ID 1 has ID = 1000002  Ordinary price list for market with ID 2 has ID = 2000000  And so on ...

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let priceListPrices = [PriceList.Models.Write.PriceListPrice(priceListId: 123, price: 123, productId: "productId_example", currency: "currency_example", staggeredCount: 123)] // [PriceListModelsWritePriceListPrice] | List of new price list prices.
let productIdType = 987 // Int | The type of product id supplied in {priceListPrices} (optional)
let pricesIncVat = true // Bool | Set to true if prices in {priceListPrices} includes VAT. Leave blank or set to false if they exclude VAT. (optional)

// Updates price list prices
PriceListAPI.updatePricelistPrices(priceListPrices: priceListPrices, productIdType: productIdType, pricesIncVat: pricesIncVat) { (response, error) in
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
 **priceListPrices** | [**[PriceListModelsWritePriceListPrice]**](PriceListModelsWritePriceListPrice.md) | List of new price list prices. | 
 **productIdType** | **Int** | The type of product id supplied in {priceListPrices} | [optional] 
 **pricesIncVat** | **Bool** | Set to true if prices in {priceListPrices} includes VAT. Leave blank or set to false if they exclude VAT. | [optional] 

### Return type

[**PriceListModelsPriceListPriceResponse**](PriceListModelsPriceListPriceResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

