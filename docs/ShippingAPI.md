# ShippingAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createParcelGroup**](ShippingAPI.md#createparcelgroup) | **POST** /API/Shipping/ParcelGroup | Create a new parcel group
[**queryShippingOptions**](ShippingAPI.md#queryshippingoptions) | **POST** /API/Shipping/Query | Query shipping options


# **createParcelGroup**
```swift
    open class func createParcelGroup(parcelGroupOptions: ShippingModelsParcelGroupOptions, completion: @escaping (_ data: EnvelopeInt?, _ error: Error?) -> Void)
```

Create a new parcel group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let parcelGroupOptions = Shipping.Models.ParcelGroupOptions(orderIds: [123], markAsDelivered: false, signalCapturesCreated: false) // ShippingModelsParcelGroupOptions | Options for the new parcel group.

// Create a new parcel group
ShippingAPI.createParcelGroup(parcelGroupOptions: parcelGroupOptions) { (response, error) in
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
 **parcelGroupOptions** | [**ShippingModelsParcelGroupOptions**](ShippingModelsParcelGroupOptions.md) | Options for the new parcel group. | 

### Return type

[**EnvelopeInt**](EnvelopeInt.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryShippingOptions**
```swift
    open class func queryShippingOptions(shippingQuery: ShippingModelsShippingQuery, completion: @escaping (_ data: [ShippingModelsShippingOption]?, _ error: Error?) -> Void)
```

Query shipping options

No response envelope.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let shippingQuery = Shipping.Models.ShippingQuery(siteId: 123, countryId: 123, shippingId: 123, deliveryOptionId: 123, order: Order.CheckoutOrder(orderId: "orderId_example", externalOrderId: "externalOrderId_example", cartId: "cartId_example", sessionId: "sessionId_example", siteId: 123, currency: "currency_example", status: "status_example", ipAddress: "ipAddress_example", message: "message_example", internalMessage: "internalMessage_example", locale: "locale_example", rows: [Order.CheckoutOrderRow(sku: "sku_example", productId: 123, externalId: "externalId_example", discountRate: 123, cartRowId: 123, productContainerBuildId: 123, message: "message_example", articleNumber: "articleNumber_example", gtin: "gtin_example", brand: "brand_example", categories: ["categories_example"], name: "name_example", variant: "variant_example", quantity: 123, priceIncVat: 123, priceExVat: 123, expectedTotalPriceIncVat: 123, discountIncVat: 123, discountExVat: 123, expectedTotalDiscountIncVat: 123, productUrl: "productUrl_example", imageUrl: "imageUrl_example", weight: 123, height: 123, width: 123, length: 123, campaignIds: ["campaignIds_example"], campaignGroupData: "campaignGroupData_example", campaignNames: ["campaignNames_example"], productPriceCampaignId: 123, productPriceListId: 123)], campaignId: 123, campaignCode: "campaignCode_example", campaignName: "campaignName_example", campaignIds: ["campaignIds_example"], campaignNames: ["campaignNames_example"], customerId: 123, customerTypeId: 123, gender: 123, dateOfBirth: Date(), personalId: "personalId_example", userAgent: "userAgent_example", metaData: "TODO", paymentId: 123, transactionId: "transactionId_example", secondaryTransactionId: "secondaryTransactionId_example", country: "country_example", company: "company_example", organizationNumber: "organizationNumber_example", firstName: "firstName_example", lastName: "lastName_example", email: "email_example", address1: "address1_example", address2: "address2_example", zip: "zip_example", city: "city_example", region: "region_example", phone: "phone_example", mobilePhone: "mobilePhone_example", careOf: "careOf_example", shippingId: 123, shippingCountry: "shippingCountry_example", shippingCompany: "shippingCompany_example", shippingOrganizationNumber: "shippingOrganizationNumber_example", shippingFirstName: "shippingFirstName_example", shippingLastName: "shippingLastName_example", shippingEmail: "shippingEmail_example", shippingAddress1: "shippingAddress1_example", shippingAddress2: "shippingAddress2_example", shippingZip: "shippingZip_example", shippingCity: "shippingCity_example", shippingRegion: "shippingRegion_example", shippingPhone: "shippingPhone_example", shippingMobilePhone: "shippingMobilePhone_example", shippingCareOf: "shippingCareOf_example", pickupPoint: "pickupPoint_example", desiredDeliveryDate: Date(), freightClass: Order.FreightClass(id: 123, type: 123, name: "name_example", typeAsEnum: 123), sum: 123, expectedSum: 123, orderValueIncVat: 123, orderValueExVat: 123, itemValueIncVat: 123, itemValueExVat: 123, discountIncVat: 123, discountExVat: 123, percentDiscount: 123, balance: 123, shippingFeeIncVat: 123, shippingFeeExVat: 123, paymentFeeIncVat: 123, paymentFeeExVat: 123), minimumFreeShippingLimit: 123) // ShippingModelsShippingQuery | The query to filter shipping options by.

// Query shipping options
ShippingAPI.queryShippingOptions(shippingQuery: shippingQuery) { (response, error) in
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
 **shippingQuery** | [**ShippingModelsShippingQuery**](ShippingModelsShippingQuery.md) | The query to filter shipping options by. | 

### Return type

[**[ShippingModelsShippingOption]**](ShippingModelsShippingOption.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

