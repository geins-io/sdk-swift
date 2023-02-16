# ProductModelsProductQuery

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**updatedAfter** | **Date** | Limits query to products updated after the specified date. | [optional] 
**productIds** | **[Int]** | Limits query to only include the supplied product ids. | [optional] 
**articleNumbers** | **[String]** | Limits query to only include products with supplied article numbers. | [optional] 
**onlySellable** | **Bool** | Limits query to only include products that are available for purchase | [optional] 
**feedId** | **Int** | Limits query to only include products contained in the specified feed. | [optional] 
**batchId** | **UUID** | Used to fetch products where the result set is split into batches | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


