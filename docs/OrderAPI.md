# OrderAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCommentToOrder**](OrderAPI.md#addcommenttoorder) | **POST** /API/Order/{id}/Comment | Adds a comment to the order
[**createOrder**](OrderAPI.md#createorder) | **POST** /API/Order | Post a new order
[**createOrderId**](OrderAPI.md#createorderid) | **POST** /API/Order/Id | Create a new order id
[**deleteOrder**](OrderAPI.md#deleteorder) | **DELETE** /API/Order/{id} | Deletes or deactivates an order
[**getCaptureById**](OrderAPI.md#getcapturebyid) | **GET** /API/Order/Capture/{captureId} | Get Capture by Id
[**getOrderById**](OrderAPI.md#getorderbyid) | **GET** /API/Order/{id}/{include} | Get an instance of a order
[**getOrderStatuses**](OrderAPI.md#getorderstatuses) | **GET** /API/Order/Statuses | Get a list of available order statuses
[**getRefundById**](OrderAPI.md#getrefundbyid) | **GET** /API/Order/Refund/{refundId} | Get Refund by Id
[**partialUpdateOfOrder**](OrderAPI.md#partialupdateoforder) | **PATCH** /API/Order/{id} | Partial update of an order
[**queryOrders**](OrderAPI.md#queryorders) | **POST** /API/Order/Query | Query the order repository
[**setCaptureAsProcessed**](OrderAPI.md#setcaptureasprocessed) | **POST** /API/Order/Capture/SetAsProcessed | Set a capture as processed (&#x3D; captured)
[**setPaymentAsPayed**](OrderAPI.md#setpaymentaspayed) | **POST** /API/Order/PaymentDetail/{paymentDetailId}/SetAsPayed | Set Payment Detail as payed
[**setRefundAsProcessed**](OrderAPI.md#setrefundasprocessed) | **POST** /API/Order/Refund/SetAsProcessed | Set a refund as processed (&#x3D; settled)
[**updateOrderStatus**](OrderAPI.md#updateorderstatus) | **POST** /API/Order/{id}/Status/{status}/{transactionId}/{secondaryTransactionId} | Update order status
[**updateTransactionData**](OrderAPI.md#updatetransactiondata) | **POST** /API/Order/{id}/TransactionData | Updates transaction data on an order
[**validateOrder**](OrderAPI.md#validateorder) | **POST** /API/Order/ValidateCreation | Validates order data for order creation.


# **addCommentToOrder**
```swift
    open class func addCommentToOrder(id: Int, orderComment: APIOrderOrderComment, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Adds a comment to the order

This add to (not replace) any previous comments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Order ID.
let orderComment = API.Order.OrderComment(orderId: 123, comment: "comment_example", system: false) // APIOrderOrderComment | The comment

// Adds a comment to the order
OrderAPI.addCommentToOrder(id: id, orderComment: orderComment) { (response, error) in
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
 **id** | **Int** | Order ID. | 
 **orderComment** | [**APIOrderOrderComment**](APIOrderOrderComment.md) | The comment | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrder**
```swift
    open class func createOrder(order: OrderModelsOrder, completion: @escaping (_ data: EnvelopeInt?, _ error: Error?) -> Void)
```

Post a new order

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let order = Order.Models.Order(id: 123, externalId: "externalId_example", personalId: "personalId_example", customerId: 123, customerTypeId: 123, createdAt: Date(), updatedAt: Date(), completedAt: Date(), status: "status_example", currency: "currency_example", currencyRate: 123, marketId: 123, marketName: "marketName_example", language: "language_example", orderTotal: 123, expectedSum: 123, vATTotal: 123, orderValueIncVat: 123, orderValueExVat: 123, itemValueIncVat: 123, itemValueExVat: 123, discount: 123, discountExVat: 123, fromBalance: 123, shippingFee: 123, shippingFeeExVat: 123, paymentFee: 123, paymentFeeExVat: 123, message: "message_example", orderMessages: ["orderMessages_example"], paymentDetails: [Order.Models.PaymentDetail(id: 123, paymentId: 123, name: "name_example", displayName: "displayName_example", transactionId: "transactionId_example", secondaryTransactionId: "secondaryTransactionId_example", reservationNumber: "reservationNumber_example", reservationDate: Date(), paymentDate: Date(), total: 123, payed: false, paymentFee: 123, shippingFee: 123, paymentOption: "paymentOption_example")], shippingDetails: [Order.Models.ShippingDetail(id: 123, shippingId: 123, name: "name_example", parcelNumber: "parcelNumber_example", shippingDate: Date(), trackingUrl: "trackingUrl_example", externalDeliveryOptionId: "externalDeliveryOptionId_example", externalServiceId: "externalServiceId_example", externalCarrierId: "externalCarrierId_example", pickupPoint: "pickupPoint_example")], shippingAddress: Order.Models.Address(company: "company_example", careOf: "careOf_example", state: "state_example", country: "country_example", firstName: "firstName_example", lastName: "lastName_example", email: "email_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", addressLine3: "addressLine3_example", zip: "zip_example", city: "city_example", phone: "phone_example", mobile: "mobile_example", entryCode: "entryCode_example"), billingAddress: nil, rows: [Order.Models.OrderRow(id: 123)], refunds: [Order.Models.Refund(id: 123, orderRowId: 123, paymentDetailId: 123, returnId: 123, articleNumber: "articleNumber_example", createdAt: Date(), total: 123, reasonCode: 123, reason: "reason_example", toBalance: false, vat: 123, itemId: 123, refundType: "refundType_example")], ip: "ip_example", userAgent: "userAgent_example", serviceLocation: "serviceLocation_example", campaignCode: "campaignCode_example", campaignCodeId: 123, percent: 123, desiredDeliveryDate: Date(), gender: false, cartId: 123, sessionId: "sessionId_example", externalOrderStatus: 123, campaignIds: ["campaignIds_example"], campaignNames: ["campaignNames_example"], metaData: "TODO", publicId: 123) // OrderModelsOrder | The order object.

// Post a new order
OrderAPI.createOrder(order: order) { (response, error) in
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
 **order** | [**OrderModelsOrder**](OrderModelsOrder.md) | The order object. | 

### Return type

[**EnvelopeInt**](EnvelopeInt.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrderId**
```swift
    open class func createOrderId(completion: @escaping (_ data: EnvelopeInt?, _ error: Error?) -> Void)
```

Create a new order id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Create a new order id
OrderAPI.createOrderId() { (response, error) in
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

[**EnvelopeInt**](EnvelopeInt.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrder**
```swift
    open class func deleteOrder(id: Int, operation: Operation_deleteOrder, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Deletes or deactivates an order

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the order to delete.
let operation = 987 // Int | The method of deletion desired.

// Deletes or deactivates an order
OrderAPI.deleteOrder(id: id, operation: operation) { (response, error) in
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
 **id** | **Int** | The ID of the order to delete. | 
 **operation** | **Int** | The method of deletion desired. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCaptureById**
```swift
    open class func getCaptureById(captureId: UUID, completion: @escaping (_ data: OrderCapture?, _ error: Error?) -> Void)
```

Get Capture by Id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let captureId = 987 // UUID | Capture ID.

// Get Capture by Id
OrderAPI.getCaptureById(captureId: captureId) { (response, error) in
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
 **captureId** | **UUID** | Capture ID. | 

### Return type

[**OrderCapture**](OrderCapture.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
```swift
    open class func getOrderById(id: Int, include: String, combineProductContainerRows: Bool? = nil, completion: @escaping (_ data: OrderModelsOrder?, _ error: Error?) -> Void)
```

Get an instance of a order

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the order to get.
let include = "include_example" // String | A comma separated string of what related collections to include with this result set. The  possible values are: rows, paymentdetails, shippingdetails and refunds.
let combineProductContainerRows = true // Bool | If true, will combine all order rows that are part of a container into a single container row. (optional)

// Get an instance of a order
OrderAPI.getOrderById(id: id, include: include, combineProductContainerRows: combineProductContainerRows) { (response, error) in
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
 **id** | **Int** | The ID of the order to get. | 
 **include** | **String** | A comma separated string of what related collections to include with this result set. The  possible values are: rows, paymentdetails, shippingdetails and refunds. | 
 **combineProductContainerRows** | **Bool** | If true, will combine all order rows that are part of a container into a single container row. | [optional] 

### Return type

[**OrderModelsOrder**](OrderModelsOrder.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderStatuses**
```swift
    open class func getOrderStatuses(completion: @escaping (_ data: [OrderModelsOrderStatus]?, _ error: Error?) -> Void)
```

Get a list of available order statuses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a list of available order statuses
OrderAPI.getOrderStatuses() { (response, error) in
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

[**[OrderModelsOrderStatus]**](OrderModelsOrderStatus.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefundById**
```swift
    open class func getRefundById(refundId: UUID, completion: @escaping (_ data: OrderRefund?, _ error: Error?) -> Void)
```

Get Refund by Id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let refundId = 987 // UUID | Refund ID.

// Get Refund by Id
OrderAPI.getRefundById(refundId: refundId) { (response, error) in
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
 **refundId** | **UUID** | Refund ID. | 

### Return type

[**OrderRefund**](OrderRefund.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateOfOrder**
```swift
    open class func partialUpdateOfOrder(id: Int, order: OrderModelsOrderUpdate, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Partial update of an order

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The orderId of the order to update
let order = Order.Models.OrderUpdate(externalId: "externalId_example", parcelNumber: "parcelNumber_example", externalOrderStatus: 123) // OrderModelsOrderUpdate | The order object containing the properties that should be updated.

// Partial update of an order
OrderAPI.partialUpdateOfOrder(id: id, order: order) { (response, error) in
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
 **id** | **Int** | The orderId of the order to update | 
 **order** | [**OrderModelsOrderUpdate**](OrderModelsOrderUpdate.md) | The order object containing the properties that should be updated. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryOrders**
```swift
    open class func queryOrders(query: OrderModelsOrderQuery, completion: @escaping (_ data: [OrderModelsOrder]?, _ error: Error?) -> Void)
```

Query the order repository

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = Order.Models.OrderQuery(updated: Date(), statusList: "statusList_example", marketId: 123, paymentName: "paymentName_example", parcelGroupId: 123, customerId: 123, email: "email_example", include: "include_example", externalOrderStatus: 123, combineProductContainerRows: false, packingLocationId: 123) // OrderModelsOrderQuery | The details of the query.

// Query the order repository
OrderAPI.queryOrders(query: query) { (response, error) in
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
 **query** | [**OrderModelsOrderQuery**](OrderModelsOrderQuery.md) | The details of the query. | 

### Return type

[**[OrderModelsOrder]**](OrderModelsOrder.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCaptureAsProcessed**
```swift
    open class func setCaptureAsProcessed(processedCapture: OrderProcessedCapture, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Set a capture as processed (= captured)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let processedCapture = Order.ProcessedCapture(captureId: 123, externalId: "externalId_example", reference: "reference_example", processedOn: Date()) // OrderProcessedCapture | Contains CaptureId and optional metadata about capture.

// Set a capture as processed (= captured)
OrderAPI.setCaptureAsProcessed(processedCapture: processedCapture) { (response, error) in
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
 **processedCapture** | [**OrderProcessedCapture**](OrderProcessedCapture.md) | Contains CaptureId and optional metadata about capture. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPaymentAsPayed**
```swift
    open class func setPaymentAsPayed(paymentDetailId: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Set Payment Detail as payed

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let paymentDetailId = 987 // Int | Payment Detail ID.

// Set Payment Detail as payed
OrderAPI.setPaymentAsPayed(paymentDetailId: paymentDetailId) { (response, error) in
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
 **paymentDetailId** | **Int** | Payment Detail ID. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRefundAsProcessed**
```swift
    open class func setRefundAsProcessed(processedRefund: OrderProcessedRefund, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Set a refund as processed (= settled)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let processedRefund = Order.ProcessedRefund(refundId: 123, externalId: "externalId_example", reference: "reference_example", processedOn: Date()) // OrderProcessedRefund | Contains RefundId and optional metadata about refund.

// Set a refund as processed (= settled)
OrderAPI.setRefundAsProcessed(processedRefund: processedRefund) { (response, error) in
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
 **processedRefund** | [**OrderProcessedRefund**](OrderProcessedRefund.md) | Contains RefundId and optional metadata about refund. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrderStatus**
```swift
    open class func updateOrderStatus(id: Int, status: Status_updateOrderStatus, transactionId: String, secondaryTransactionId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update order status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Order ID.
let status = 987 // Int | Order status. These statuses can be set: cancelled, on-hold, inactive, out-of-stock,  backorder, completed, pending.
let transactionId = "transactionId_example" // String | A transaction id can be set here if status is set to pending.
let secondaryTransactionId = "secondaryTransactionId_example" // String | A secondary transaction id, if any, can be set here if status is set to pending.

// Update order status
OrderAPI.updateOrderStatus(id: id, status: status, transactionId: transactionId, secondaryTransactionId: secondaryTransactionId) { (response, error) in
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
 **id** | **Int** | Order ID. | 
 **status** | **Int** | Order status. These statuses can be set: cancelled, on-hold, inactive, out-of-stock,  backorder, completed, pending. | 
 **transactionId** | **String** | A transaction id can be set here if status is set to pending. | 
 **secondaryTransactionId** | **String** | A secondary transaction id, if any, can be set here if status is set to pending. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTransactionData**
```swift
    open class func updateTransactionData(id: Int, transactionData: APIOrderTransactionData, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Updates transaction data on an order

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Order ID.
let transactionData = API.Order.TransactionData(orderId: 123, transactionId: "transactionId_example") // APIOrderTransactionData | The transaction data

// Updates transaction data on an order
OrderAPI.updateTransactionData(id: id, transactionData: transactionData) { (response, error) in
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
 **id** | **Int** | Order ID. | 
 **transactionData** | [**APIOrderTransactionData**](APIOrderTransactionData.md) | The transaction data | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateOrder**
```swift
    open class func validateOrder(request: OrderValidateOrderCreationRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Validates order data for order creation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let request = Order.ValidateOrderCreationRequest(orderId: 123, userId: 123, email: "email_example", phone: "phone_example", currency: "currency_example", sumIncVat: 123, balanceIncVat: 123, items: [Order.ValidateOrderCreationRequest.StockItem(itemId: 123, quantity: 123)]) // OrderValidateOrderCreationRequest | The order data to validate.

// Validates order data for order creation.
OrderAPI.validateOrder(request: request) { (response, error) in
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
 **request** | [**OrderValidateOrderCreationRequest**](OrderValidateOrderCreationRequest.md) | The order data to validate. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

