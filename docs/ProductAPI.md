# ProductAPI

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAvailabilityMonitor**](ProductAPI.md#addavailabilitymonitor) | **POST** /API/Product/MonitorAvailability | Add a product availability monitor
[**addCategoryToProduct**](ProductAPI.md#addcategorytoproduct) | **PUT** /API/Product/{productId}/Category | Adds a category relation to a product
[**addImageToProduct**](ProductAPI.md#addimagetoproduct) | **PUT** /API/Product/{productId}/Image/{imageName} | Adds an image relation to a product
[**addRelatedProductsToProduct**](ProductAPI.md#addrelatedproductstoproduct) | **PUT** /API/Product/{productId}/Related | Add related products to a product
[**batchUpdateProductItems**](ProductAPI.md#batchupdateproductitems) | **PUT** /API/Product/Items | Updates product items in batch
[**batchUpdateStockValues**](ProductAPI.md#batchupdatestockvalues) | **PUT** /API/Product/Stock | Update stock values for multiple product items
[**createProduct**](ProductAPI.md#createproduct) | **POST** /API/Product | Create a new product
[**createProductItems**](ProductAPI.md#createproductitems) | **POST** /API/Product/{productId}/Item | Create a new product item
[**getProductById**](ProductAPI.md#getproductbyid) | **GET** /API/Product/{productId} | Get a specific product
[**getProductItemById**](ProductAPI.md#getproductitembyid) | **GET** /API/Product/Item/{itemId} | Get a specific product item
[**linkRelatedProductsByRelationId**](ProductAPI.md#linkrelatedproductsbyrelationid) | **PUT** /API/Product/{productId}/Related/{relationTypeId} | Add related products to a product using a fixed relation type
[**listAllProductItemsPaged**](ProductAPI.md#listallproductitemspaged) | **GET** /API/Product/Items/{page} | Get all product items with pagination
[**listFeeds**](ProductAPI.md#listfeeds) | **GET** /API/Product/Feeds | Gets a list of all feeds
[**listProductItems**](ProductAPI.md#listproductitems) | **GET** /API/Product/Items | Get all product items
[**listProductRelationTypes**](ProductAPI.md#listproductrelationtypes) | **GET** /API/Product/RelationTypes | Gets a list of product relation types
[**queryProducts**](ProductAPI.md#queryproducts) | **POST** /API/Product/Query | Query products
[**queryProductsPaged**](ProductAPI.md#queryproductspaged) | **POST** /API/Product/Query/{page} | Query products with pagination
[**queryStock**](ProductAPI.md#querystock) | **POST** /API/Product/Stock/Query | Query stock
[**updateProduct**](ProductAPI.md#updateproduct) | **PUT** /API/Product/{productId} | Updates a product
[**updateProductItem**](ProductAPI.md#updateproductitem) | **PUT** /API/Product/Item/{itemId} | Updates a product item


# **addAvailabilityMonitor**
```swift
    open class func addAvailabilityMonitor(model: ProductModelsMonitorSku, completion: @escaping (_ data: Envelope?, _ error: Error?) -> Void)
```

Add a product availability monitor

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let model = Product.Models.MonitorSku(siteId: 123, languageCode: "languageCode_example", email: "email_example", skuId: 123) // ProductModelsMonitorSku | 

// Add a product availability monitor
ProductAPI.addAvailabilityMonitor(model: model) { (response, error) in
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
 **model** | [**ProductModelsMonitorSku**](ProductModelsMonitorSku.md) |  | 

### Return type

[**Envelope**](Envelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCategoryToProduct**
```swift
    open class func addCategoryToProduct(productId: String, productCategory: ProductModelsProductCategory, productIdType: ProductIdType_addCategoryToProduct? = nil, completion: @escaping (_ data: Envelope?, _ error: Error?) -> Void)
```

Adds a category relation to a product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product to update.
let productCategory = Product.Models.ProductCategory(categoryId: 123) // ProductModelsProductCategory | The category to relate the product to.
let productIdType = 987 // Int | The type of product id supplied in {productId}. (optional)

// Adds a category relation to a product
ProductAPI.addCategoryToProduct(productId: productId, productCategory: productCategory, productIdType: productIdType) { (response, error) in
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
 **productId** | **String** | The id of the product to update. | 
 **productCategory** | [**ProductModelsProductCategory**](ProductModelsProductCategory.md) | The category to relate the product to. | 
 **productIdType** | **Int** | The type of product id supplied in {productId}. | [optional] 

### Return type

[**Envelope**](Envelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addImageToProduct**
```swift
    open class func addImageToProduct(productId: String, imageName: String, isPrimaryImage: Bool? = nil, productIdType: ProductIdType_addImageToProduct? = nil, completion: @escaping (_ data: Envelope?, _ error: Error?) -> Void)
```

Adds an image relation to a product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product to update.
let imageName = "imageName_example" // String | The name of the image to set to product.
let isPrimaryImage = true // Bool | Specifies whether {imageName} should be set as the primary image of the product. (optional)
let productIdType = 987 // Int | The type of product id supplied in {productId}. (optional)

// Adds an image relation to a product
ProductAPI.addImageToProduct(productId: productId, imageName: imageName, isPrimaryImage: isPrimaryImage, productIdType: productIdType) { (response, error) in
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
 **productId** | **String** | The id of the product to update. | 
 **imageName** | **String** | The name of the image to set to product. | 
 **isPrimaryImage** | **Bool** | Specifies whether {imageName} should be set as the primary image of the product. | [optional] 
 **productIdType** | **Int** | The type of product id supplied in {productId}. | [optional] 

### Return type

[**Envelope**](Envelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRelatedProductsToProduct**
```swift
    open class func addRelatedProductsToProduct(productId: String, relatedProducts: [ProductModelsWriteRelatedProduct], productIdType: ProductIdType_addRelatedProductsToProduct? = nil, completion: @escaping (_ data: ProductModelsRelatedProductEnvelope?, _ error: Error?) -> Void)
```

Add related products to a product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the main product to which the relations will be created
let relatedProducts = [Product.Models.Write.RelatedProduct(relatedProductId: "relatedProductId_example", relationTypeId: 123)] // [ProductModelsWriteRelatedProduct] | The list of related products to link with the main product.
let productIdType = 987 // Int | The type of product id for {productId} and supplied in {relatedProducts}. (optional)

// Add related products to a product
ProductAPI.addRelatedProductsToProduct(productId: productId, relatedProducts: relatedProducts, productIdType: productIdType) { (response, error) in
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
 **productId** | **String** | The id of the main product to which the relations will be created | 
 **relatedProducts** | [**[ProductModelsWriteRelatedProduct]**](ProductModelsWriteRelatedProduct.md) | The list of related products to link with the main product. | 
 **productIdType** | **Int** | The type of product id for {productId} and supplied in {relatedProducts}. | [optional] 

### Return type

[**ProductModelsRelatedProductEnvelope**](ProductModelsRelatedProductEnvelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchUpdateProductItems**
```swift
    open class func batchUpdateProductItems(productItems: [ProductModelsWriteProductItem], productItemIdType: ProductItemIdType_batchUpdateProductItems? = nil, completion: @escaping (_ data: Envelope?, _ error: Error?) -> Void)
```

Updates product items in batch

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productItems = [Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example")] // [ProductModelsWriteProductItem] | The product items to update
let productItemIdType = 987 // Int | The type of product item id (optional)

// Updates product items in batch
ProductAPI.batchUpdateProductItems(productItems: productItems, productItemIdType: productItemIdType) { (response, error) in
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
 **productItems** | [**[ProductModelsWriteProductItem]**](ProductModelsWriteProductItem.md) | The product items to update | 
 **productItemIdType** | **Int** | The type of product item id | [optional] 

### Return type

[**Envelope**](Envelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchUpdateStockValues**
```swift
    open class func batchUpdateStockValues(productItemStocks: [ProductModelsWriteProductItemStock], productItemIdType: ProductItemIdType_batchUpdateStockValues? = nil, completion: @escaping (_ data: ProductModelsStockEnvelope?, _ error: Error?) -> Void)
```

Update stock values for multiple product items

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productItemStocks = [Product.Models.Write.ProductItemStock(id: "id_example", stock: 123, stockSellable: 123, stockType: 123)] // [ProductModelsWriteProductItemStock] | List of product item ids with new stock values.
let productItemIdType = 987 // Int | The type of product item id supplied in {productItemStocks}. (optional)

// Update stock values for multiple product items
ProductAPI.batchUpdateStockValues(productItemStocks: productItemStocks, productItemIdType: productItemIdType) { (response, error) in
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
 **productItemStocks** | [**[ProductModelsWriteProductItemStock]**](ProductModelsWriteProductItemStock.md) | List of product item ids with new stock values. | 
 **productItemIdType** | **Int** | The type of product item id supplied in {productItemStocks}. | [optional] 

### Return type

[**ProductModelsStockEnvelope**](ProductModelsStockEnvelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProduct**
```swift
    open class func createProduct(product: ProductModelsWriteProduct, include: String? = nil, completion: @escaping (_ data: EnvelopeProductModelsReadProduct?, _ error: Error?) -> Void)
```

Create a new product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = Product.Models.Write.Product(articleNumber: "articleNumber_example", names: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], active: false, purchasePrice: 123, purchasePriceCurrency: "purchasePriceCurrency_example", shortTexts: [nil], longTexts: [nil], techTexts: [nil], brandId: 123, supplierId: 123, items: [Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example")], categoryIds: [123], parameterValues: [ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [nil])], variants: [Variant.Models.Write.Variant(label: "label_example", value: "value_example")], markets: [Market.Models.Market(id: 123, name: "name_example", displayName: "displayName_example", currency: "currency_example", vatRate: 123, marketPrefix: "marketPrefix_example", countryId: 123, currencyId: 123, currencyRate: 123, languageId: 123, language: "language_example")], freightClassId: 123, intrastatCode: "intrastatCode_example", countryOfOrigin: "countryOfOrigin_example", variantGroupId: 123, vat: 123, vatType: "vatType_example", externalId: "externalId_example", activationDate: Date()) // ProductModelsWriteProduct | The product to create.
let include = "include_example" // String | Comma separated list of child-collections to also include with the created product. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Create a new product
ProductAPI.createProduct(product: product, include: include) { (response, error) in
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
 **product** | [**ProductModelsWriteProduct**](ProductModelsWriteProduct.md) | The product to create. | 
 **include** | **String** | Comma separated list of child-collections to also include with the created product. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeProductModelsReadProduct**](EnvelopeProductModelsReadProduct.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProductItems**
```swift
    open class func createProductItems(productId: String, productItem: ProductModelsWriteProductItem, productIdType: ProductIdType_createProductItems? = nil, completion: @escaping (_ data: EnvelopeProductModelsReadProductItem?, _ error: Error?) -> Void)
```

Create a new product item

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product to create an item on.
let productItem = Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example") // ProductModelsWriteProductItem | The product item to create.
let productIdType = 987 // Int | The type of product id supplied in {productId}. (optional)

// Create a new product item
ProductAPI.createProductItems(productId: productId, productItem: productItem, productIdType: productIdType) { (response, error) in
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
 **productId** | **String** | The id of the product to create an item on. | 
 **productItem** | [**ProductModelsWriteProductItem**](ProductModelsWriteProductItem.md) | The product item to create. | 
 **productIdType** | **Int** | The type of product id supplied in {productId}. | [optional] 

### Return type

[**EnvelopeProductModelsReadProductItem**](EnvelopeProductModelsReadProductItem.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductById**
```swift
    open class func getProductById(productId: String, productIdType: ProductIdType_getProductById? = nil, include: String? = nil, completion: @escaping (_ data: EnvelopeProductModelsReadProduct?, _ error: Error?) -> Void)
```

Get a specific product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product to get.
let productIdType = 987 // Int | The type of product id supplied in {productId}. (optional)
let include = "include_example" // String | Comma separated list of child-collections to also include with the requested product. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Get a specific product
ProductAPI.getProductById(productId: productId, productIdType: productIdType, include: include) { (response, error) in
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
 **productId** | **String** | The id of the product to get. | 
 **productIdType** | **Int** | The type of product id supplied in {productId}. | [optional] 
 **include** | **String** | Comma separated list of child-collections to also include with the requested product. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeProductModelsReadProduct**](EnvelopeProductModelsReadProduct.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductItemById**
```swift
    open class func getProductItemById(itemId: String, productItemIdType: ProductItemIdType_getProductItemById? = nil, completion: @escaping (_ data: ProductProductItemEnvelope?, _ error: Error?) -> Void)
```

Get a specific product item

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let itemId = "itemId_example" // String | The id of the product item to get.
let productItemIdType = 987 // Int | The type of product item id supplied in {itemId}. (optional)

// Get a specific product item
ProductAPI.getProductItemById(itemId: itemId, productItemIdType: productItemIdType) { (response, error) in
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
 **itemId** | **String** | The id of the product item to get. | 
 **productItemIdType** | **Int** | The type of product item id supplied in {itemId}. | [optional] 

### Return type

[**ProductProductItemEnvelope**](ProductProductItemEnvelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkRelatedProductsByRelationId**
```swift
    open class func linkRelatedProductsByRelationId(productId: String, relationTypeId: Int, relatedProducts: [ProductModelsWriteRelatedProduct], productIdType: ProductIdType_linkRelatedProductsByRelationId? = nil, completion: @escaping (_ data: ProductModelsRelatedProductEnvelope?, _ error: Error?) -> Void)
```

Add related products to a product using a fixed relation type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the main product to which the relations will be created
let relationTypeId = 987 // Int | The relation type id that will apply to all related products in {relatedProducts}
let relatedProducts = [Product.Models.Write.RelatedProduct(relatedProductId: "relatedProductId_example", relationTypeId: 123)] // [ProductModelsWriteRelatedProduct] | The list of related products to link with the main product.
let productIdType = 987 // Int | The type of product id for {productId} and supplied in {relatedProducts}. (optional)

// Add related products to a product using a fixed relation type
ProductAPI.linkRelatedProductsByRelationId(productId: productId, relationTypeId: relationTypeId, relatedProducts: relatedProducts, productIdType: productIdType) { (response, error) in
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
 **productId** | **String** | The id of the main product to which the relations will be created | 
 **relationTypeId** | **Int** | The relation type id that will apply to all related products in {relatedProducts} | 
 **relatedProducts** | [**[ProductModelsWriteRelatedProduct]**](ProductModelsWriteRelatedProduct.md) | The list of related products to link with the main product. | 
 **productIdType** | **Int** | The type of product id for {productId} and supplied in {relatedProducts}. | [optional] 

### Return type

[**ProductModelsRelatedProductEnvelope**](ProductModelsRelatedProductEnvelope.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllProductItemsPaged**
```swift
    open class func listAllProductItemsPaged(page: Int, completion: @escaping (_ data: EnvelopeListProductModelsReadProductItem?, _ error: Error?) -> Void)
```

Get all product items with pagination

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | The page to fetch

// Get all product items with pagination
ProductAPI.listAllProductItemsPaged(page: page) { (response, error) in
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
 **page** | **Int** | The page to fetch | 

### Return type

[**EnvelopeListProductModelsReadProductItem**](EnvelopeListProductModelsReadProductItem.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFeeds**
```swift
    open class func listFeeds(completion: @escaping (_ data: EnvelopeListProductModelsReadFeed?, _ error: Error?) -> Void)
```

Gets a list of all feeds

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Gets a list of all feeds
ProductAPI.listFeeds() { (response, error) in
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

[**EnvelopeListProductModelsReadFeed**](EnvelopeListProductModelsReadFeed.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProductItems**
```swift
    open class func listProductItems(completion: @escaping (_ data: [ProductModelsReadProductItem]?, _ error: Error?) -> Void)
```

Get all product items

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all product items
ProductAPI.listProductItems() { (response, error) in
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

[**[ProductModelsReadProductItem]**](ProductModelsReadProductItem.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProductRelationTypes**
```swift
    open class func listProductRelationTypes(completion: @escaping (_ data: EnvelopeListProductModelsReadRelationType?, _ error: Error?) -> Void)
```

Gets a list of product relation types

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Gets a list of product relation types
ProductAPI.listProductRelationTypes() { (response, error) in
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

[**EnvelopeListProductModelsReadRelationType**](EnvelopeListProductModelsReadRelationType.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryProducts**
```swift
    open class func queryProducts(query: ProductModelsProductQuery, include: String? = nil, completion: @escaping (_ data: EnvelopeListProductModelsReadProduct?, _ error: Error?) -> Void)
```

Query products

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = Product.Models.ProductQuery(updatedAfter: Date(), productIds: [123], articleNumbers: ["articleNumbers_example"], onlySellable: false, feedId: 123, batchId: 123) // ProductModelsProductQuery | The details of the query
let include = "include_example" // String | Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Query products
ProductAPI.queryProducts(query: query, include: include) { (response, error) in
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
 **query** | [**ProductModelsProductQuery**](ProductModelsProductQuery.md) | The details of the query | 
 **include** | **String** | Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeListProductModelsReadProduct**](EnvelopeListProductModelsReadProduct.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryProductsPaged**
```swift
    open class func queryProductsPaged(page: Int, query: ProductModelsProductQuery, include: String? = nil, completion: @escaping (_ data: EnvelopeListProductModelsReadProduct?, _ error: Error?) -> Void)
```

Query products with pagination

The {Product.Models.ProductQuery.BatchId} property is mandatory when fetching a page other than the first page.  If no BatchId is provided for the first page, a new batch is created and the BatchId can be found in the {Envelope.PageResult} field.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | The page to fetch. To start a new batched query it is mandatory to send in page=1
let query = Product.Models.ProductQuery(updatedAfter: Date(), productIds: [123], articleNumbers: ["articleNumbers_example"], onlySellable: false, feedId: 123, batchId: 123) // ProductModelsProductQuery | The details of the query
let include = "include_example" // String | Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Query products with pagination
ProductAPI.queryProductsPaged(page: page, query: query, include: include) { (response, error) in
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
 **page** | **Int** | The page to fetch. To start a new batched query it is mandatory to send in page&#x3D;1 | 
 **query** | [**ProductModelsProductQuery**](ProductModelsProductQuery.md) | The details of the query | 
 **include** | **String** | Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeListProductModelsReadProduct**](EnvelopeListProductModelsReadProduct.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryStock**
```swift
    open class func queryStock(productItemIds: [Int], completion: @escaping (_ data: [ProductModelsReadProductItemStock]?, _ error: Error?) -> Void)
```

Query stock

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productItemIds = [123] // [Int] | The details of the query.

// Query stock
ProductAPI.queryStock(productItemIds: productItemIds) { (response, error) in
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
 **productItemIds** | [**[Int]**](Int.md) | The details of the query. | 

### Return type

[**[ProductModelsReadProductItemStock]**](ProductModelsReadProductItemStock.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProduct**
```swift
    open class func updateProduct(productId: String, product: ProductModelsWriteProduct, productIdType: ProductIdType_updateProduct? = nil, include: String? = nil, completion: @escaping (_ data: EnvelopeProductModelsReadProduct?, _ error: Error?) -> Void)
```

Updates a product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productId = "productId_example" // String | The id of the product to update.
let product = Product.Models.Write.Product(articleNumber: "articleNumber_example", names: [Shared.Models.LocalizableContent(languageCode: "languageCode_example", content: "content_example")], active: false, purchasePrice: 123, purchasePriceCurrency: "purchasePriceCurrency_example", shortTexts: [nil], longTexts: [nil], techTexts: [nil], brandId: 123, supplierId: 123, items: [Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example")], categoryIds: [123], parameterValues: [ProductParameter.Models.Write.ProductParameterValue(productId: 123, parameterId: 123, value: "value_example", localizedDescriptions: [nil])], variants: [Variant.Models.Write.Variant(label: "label_example", value: "value_example")], markets: [Market.Models.Market(id: 123, name: "name_example", displayName: "displayName_example", currency: "currency_example", vatRate: 123, marketPrefix: "marketPrefix_example", countryId: 123, currencyId: 123, currencyRate: 123, languageId: 123, language: "language_example")], freightClassId: 123, intrastatCode: "intrastatCode_example", countryOfOrigin: "countryOfOrigin_example", variantGroupId: 123, vat: 123, vatType: "vatType_example", externalId: "externalId_example", activationDate: Date()) // ProductModelsWriteProduct | The product data to update.
let productIdType = 987 // Int | The type of product id supplied in {productId}. (optional)
let include = "include_example" // String | Comma separated list of child-collections to also include with the updated product. See  {Product.Models.ProductIncludes} names for valid options. (optional)

// Updates a product
ProductAPI.updateProduct(productId: productId, product: product, productIdType: productIdType, include: include) { (response, error) in
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
 **productId** | **String** | The id of the product to update. | 
 **product** | [**ProductModelsWriteProduct**](ProductModelsWriteProduct.md) | The product data to update. | 
 **productIdType** | **Int** | The type of product id supplied in {productId}. | [optional] 
 **include** | **String** | Comma separated list of child-collections to also include with the updated product. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeProductModelsReadProduct**](EnvelopeProductModelsReadProduct.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductItem**
```swift
    open class func updateProductItem(itemId: String, productItem: ProductModelsWriteProductItem, productItemIdType: ProductItemIdType_updateProductItem? = nil, completion: @escaping (_ data: EnvelopeProductModelsReadProductItem?, _ error: Error?) -> Void)
```

Updates a product item

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let itemId = "itemId_example" // String | The id of the product item to update.
let productItem = Product.Models.Write.ProductItem(itemId: 123, articleNumber: "articleNumber_example", name: "name_example", shelf: "shelf_example", weight: 123, length: 123, width: 123, height: 123, gtin: "gtin_example", active: false, externalId: "externalId_example") // ProductModelsWriteProductItem | The product item data to update.
let productItemIdType = 987 // Int | The type of product item id supplied in {itemId}. (optional)

// Updates a product item
ProductAPI.updateProductItem(itemId: itemId, productItem: productItem, productItemIdType: productItemIdType) { (response, error) in
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
 **itemId** | **String** | The id of the product item to update. | 
 **productItem** | [**ProductModelsWriteProductItem**](ProductModelsWriteProductItem.md) | The product item data to update. | 
 **productItemIdType** | **Int** | The type of product item id supplied in {itemId}. | [optional] 

### Return type

[**EnvelopeProductModelsReadProductItem**](EnvelopeProductModelsReadProductItem.md)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

