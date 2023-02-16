# ProductModelsWriteProduct

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**articleNumber** | **String** | The article number of the product. | [optional] 
**names** | [SharedModelsLocalizableContent] | The localized names of the product. | [optional] 
**active** | **Bool** | The current state of the product. | [optional] 
**purchasePrice** | **Double** | The purchase price in the currency defined in {Product.Models.Write.Product.PurchasePriceCurrency}. | [optional] 
**purchasePriceCurrency** | **String** | The 3-letter ISO 4217 currency code for the amount given in {Product.Models.Write.Product.PurchasePrice}. | [optional] 
**shortTexts** | [SharedModelsLocalizableContent] | Localized short texts for the product. | [optional] 
**longTexts** | [SharedModelsLocalizableContent] | Localized long texts for the product. | [optional] 
**techTexts** | [SharedModelsLocalizableContent] | Localized tech texts for the product. | [optional] 
**brandId** | **Int** | The brand of the product. | [optional] 
**supplierId** | **Int** | The supplier id of the product. | [optional] 
**items** | [ProductModelsWriteProductItem] | The items belonging to the product. | [optional] 
**categoryIds** | **[Int]** | The category ids the product belongs to. | [optional] 
**parameterValues** | [ProductParameterModelsWriteProductParameterValue] | The parameter values associated with the product. | [optional] 
**variants** | [VariantModelsWriteVariant] | The variants for this product. | [optional] 
**markets** | [MarketModelsMarket] | The markets for this product | [optional] 
**freightClassId** | **Int** | ID of freight class | [optional] 
**intrastatCode** | **String** | Intrastat code of the product | [optional] 
**countryOfOrigin** | **String** | Country of orgin of product | [optional] 
**variantGroupId** | **Int** | ID of Variant Group to whom the product should be associated | [optional] 
**vat** | **Int** | ID or rate of VAT (On create and if no VAT is provided then default VAT will be used) | [optional] 
**vatType** | **String** | Defines how VAT parameter should be interpreted  Actual &#x3D; VAT parameter is interpreted as VAT rate  VatId &#x3D; VAT parameter is interpreted as VAT Id | [optional] 
**externalId** | **String** | External Id of the product. | [optional] 
**activationDate** | **Date** | Activation date for the product. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


