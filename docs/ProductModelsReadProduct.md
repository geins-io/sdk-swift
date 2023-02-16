# ProductModelsReadProduct

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productId** | **Int** | The unique identifier for the product. | [optional] 
**articleNumber** | **String** | The article number of the product. | [optional] 
**names** | [SharedModelsLocalizableContent] | The localized names of the product. | [optional] 
**dateCreated** | **Date** | The date the product was created. | [optional] 
**dateUpdated** | **Date** | The date the product was last updated. | [optional] 
**active** | **Bool** | The current state of the product. | [optional] 
**purchasePrice** | **Double** | The purchase price in the currency defined in {Product.Models.Read.Product.PurchasePriceCurrency}. | [optional] 
**purchasePriceCurrency** | **String** | The 3-letter ISO 4217 currency code for the amount given in {Product.Models.Read.Product.PurchasePrice}. | [optional] 
**shortTexts** | [SharedModelsLocalizableContent] | Localized short texts for the product. | [optional] 
**longTexts** | [SharedModelsLocalizableContent] | Localized long texts for the product. | [optional] 
**techTexts** | [SharedModelsLocalizableContent] | Localized tech texts for the product. | [optional] 
**items** | [ProductModelsReadProductItem] | The items belonging to the product. | [optional] 
**prices** | [PriceListModelsReadPriceListPrice] | The current prices of the product. | [optional] 
**categories** | [CategoryModelsReadCategory] | The categories the product belongs to. | [optional] 
**images** | [ProductModelsReadImage] | The images for the product | [optional] 
**brandId** | **Int** | The brand id of the product. | [optional] 
**brandName** | **String** | The brand name of the product. | [optional] 
**supplierId** | **Int** | The supplier id of the product. | [optional] 
**supplierName** | **String** | The supplier name of the product. | [optional] 
**parameterValues** | [ProductParameterModelsReadProductParameterValue] | The parameter values associated with the product. | [optional] 
**variants** | [VariantModelsReadVariant] | The variants for this product. | [optional] 
**markets** | [MarketModelsMarket] | The markets for this product | [optional] 
**vat** | **Double** | The vat percent for this product. Eg) 0.25 meaning 25% VAT. | [optional] 
**primaryImage** | **String** | The filename of this products primary image. | [optional] 
**freightClassId** | **Int** | ID of freight class | [optional] 
**intrastatCode** | **String** | Intrastat code of the product | [optional] 
**countryOfOrigin** | **String** | Country of orgin of product | [optional] 
**variantGroupId** | **Int** | ID of Variant Group to which the product is associated | [optional] 
**vatId** | **Int** | ID of Vat | [optional] 
**externalId** | **String** | External Id of the product. | [optional] 
**activationDate** | **Date** | Activation date for the product. | [optional] 
**feeds** | [ProductModelsReadFeedMembership] | The feeds the product is a member of | [optional] 
**urls** | [ProductModelsReadProductUrl] | All canonical urls for the product | [optional] 
**mainCategoryId** | **Int** | The main category id for the product. | [optional] 
**relatedProducts** | [ProductModelsReadRelatedProduct] | The related products for the product. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


