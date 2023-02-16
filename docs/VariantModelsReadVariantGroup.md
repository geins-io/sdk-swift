# VariantModelsReadVariantGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groupId** | **Int** | The id of variant goup. | [optional] 
**name** | **String** | The optional internal name of the variant group. | [optional] 
**collapseInLists** | **Bool** | Determine visibility of non-main products of this group in lists. | [optional] 
**mainProductId** | **Int** | The main product of this group. If the group is collapsed in lists, this will be the only visible product. | [optional] 
**productIds** | **[Int]** | The product ids of the variants that belong to this group. | [optional] 
**products** | [ProductModelsReadProduct] | Products belonging to the Variant group. Only included when parameter \&quot;include\&quot; is supplied in the query string | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


