# OrderModelsRefund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | Unique identifier for this refund | [optional] 
**orderRowId** | **Int** | Reference to the order row that has been refunded | [optional] 
**paymentDetailId** | **Int** | Reference to the payment detail that has been refunded | [optional] 
**returnId** | **Int** | Id number of the return. Can be used to group refunds. | [optional] 
**articleNumber** | **String** | Article number. If the refund is not bound to an order row this field contains an optional refund article number. | [optional] 
**createdAt** | **Date** | Datetime when the refund was created | [optional] 
**total** | **Double** | Total amount refunded | [optional] 
**reasonCode** | **Int** | Reason code for the refund | [optional] 
**reason** | **String** | Reason for refund | [optional] 
**toBalance** | **Bool** | Shows if the refund was deposited to the customers balance | [optional] 
**vat** | **Double** | Vat percent in decimals for the refunded amount | [optional] 
**itemId** | **Int** | Item ID (SKU). | [optional] 
**refundType** | **String** | Refund Type | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


