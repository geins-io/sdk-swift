//
// ProductParameterAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ProductParameterAPI {

    /**
     Replace multiple product parameter values
     
     - parameter productParameterBatch: (body) The product parameter values to replace. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func batchReplaceProductParameterValues(productParameterBatch: ProductParameterModelsWriteProductParameterValueBatch, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Envelope?, _ error: Error?) -> Void)) -> RequestTask {
        return batchReplaceProductParameterValuesWithRequestBuilder(productParameterBatch: productParameterBatch).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Replace multiple product parameter values
     - POST /API/ProductParameter/Values
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter productParameterBatch: (body) The product parameter values to replace. 
     - returns: RequestBuilder<Envelope> 
     */
    open class func batchReplaceProductParameterValuesWithRequestBuilder(productParameterBatch: ProductParameterModelsWriteProductParameterValueBatch) -> RequestBuilder<Envelope> {
        let localVariablePath = "/API/ProductParameter/Values"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameterBatch)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Envelope>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update multiple product parameter values
     
     - parameter productParameterBatch: (body) The product parameter values update. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func batchUpdateProductParameterValues(productParameterBatch: ProductParameterModelsWriteProductParameterValueBatch, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Envelope?, _ error: Error?) -> Void)) -> RequestTask {
        return batchUpdateProductParameterValuesWithRequestBuilder(productParameterBatch: productParameterBatch).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update multiple product parameter values
     - PUT /API/ProductParameter/Values
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter productParameterBatch: (body) The product parameter values update. 
     - returns: RequestBuilder<Envelope> 
     */
    open class func batchUpdateProductParameterValuesWithRequestBuilder(productParameterBatch: ProductParameterModelsWriteProductParameterValueBatch) -> RequestBuilder<Envelope> {
        let localVariablePath = "/API/ProductParameter/Values"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameterBatch)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Envelope>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create or update a new product parameter value
     
     - parameter productParameterValue: (body) The product parameter value to create or update. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createOrUpdateProductParameterValue(productParameterValue: ProductParameterModelsWriteProductParameterValue, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameterValue?, _ error: Error?) -> Void)) -> RequestTask {
        return createOrUpdateProductParameterValueWithRequestBuilder(productParameterValue: productParameterValue).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create or update a new product parameter value
     - POST /API/ProductParameter/Value
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter productParameterValue: (body) The product parameter value to create or update. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue> 
     */
    open class func createOrUpdateProductParameterValueWithRequestBuilder(productParameterValue: ProductParameterModelsWriteProductParameterValue) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue> {
        let localVariablePath = "/API/ProductParameter/Value"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameterValue)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a new product parameter
     
     - parameter productParameter: (body) The product parameter to create. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createProductParameter(productParameter: ProductParameterModelsWriteProductParameter, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameter?, _ error: Error?) -> Void)) -> RequestTask {
        return createProductParameterWithRequestBuilder(productParameter: productParameter).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a new product parameter
     - POST /API/ProductParameter
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter productParameter: (body) The product parameter to create. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameter> 
     */
    open class func createProductParameterWithRequestBuilder(productParameter: ProductParameterModelsWriteProductParameter) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameter> {
        let localVariablePath = "/API/ProductParameter"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameter)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameter>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a new product parameter group
     
     - parameter productParameterGroup: (body) The product parameter group to create. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createProductParameterGroup(productParameterGroup: ProductParameterModelsWriteProductParameterGroup, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameterGroup?, _ error: Error?) -> Void)) -> RequestTask {
        return createProductParameterGroupWithRequestBuilder(productParameterGroup: productParameterGroup).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a new product parameter group
     - POST /API/ProductParameter/Group
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter productParameterGroup: (body) The product parameter group to create. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup> 
     */
    open class func createProductParameterGroupWithRequestBuilder(productParameterGroup: ProductParameterModelsWriteProductParameterGroup) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup> {
        let localVariablePath = "/API/ProductParameter/Group"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameterGroup)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a new predefined value for a product parameter
     
     - parameter productParameterPredefinedValue: (body) The predefined value to create. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createProductParameterPredefinedValue(productParameterPredefinedValue: ProductParameterModelsWriteProductParameterPredefinedValue, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameterPredefinedValue?, _ error: Error?) -> Void)) -> RequestTask {
        return createProductParameterPredefinedValueWithRequestBuilder(productParameterPredefinedValue: productParameterPredefinedValue).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a new predefined value for a product parameter
     - POST /API/ProductParameter/PredefinedValue
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter productParameterPredefinedValue: (body) The predefined value to create. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterPredefinedValue> 
     */
    open class func createProductParameterPredefinedValueWithRequestBuilder(productParameterPredefinedValue: ProductParameterModelsWriteProductParameterPredefinedValue) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameterPredefinedValue> {
        let localVariablePath = "/API/ProductParameter/PredefinedValue"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameterPredefinedValue)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterPredefinedValue>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a specific product parameter
     
     - parameter id: (path) The id of the product parameter to get. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getProductParameterById(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameter?, _ error: Error?) -> Void)) -> RequestTask {
        return getProductParameterByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a specific product parameter
     - GET /API/ProductParameter/{id}
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter id: (path) The id of the product parameter to get. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameter> 
     */
    open class func getProductParameterByIdWithRequestBuilder(id: Int) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameter> {
        var localVariablePath = "/API/ProductParameter/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameter>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a specific product parameter group
     
     - parameter id: (path) The id of the product parameter group to get. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getProductParameterGroupById(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameterGroup?, _ error: Error?) -> Void)) -> RequestTask {
        return getProductParameterGroupByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a specific product parameter group
     - GET /API/ProductParameter/Group/{id}
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter id: (path) The id of the product parameter group to get. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup> 
     */
    open class func getProductParameterGroupByIdWithRequestBuilder(id: Int) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup> {
        var localVariablePath = "/API/ProductParameter/Group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a specific predefined value for a product parameter
     
     - parameter id: (path) The id of the predefined value to get. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getProductParameterPredefinedValue(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameterValue?, _ error: Error?) -> Void)) -> RequestTask {
        return getProductParameterPredefinedValueWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a specific predefined value for a product parameter
     - GET /API/ProductParameter/PredefinedValue/{id}
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter id: (path) The id of the predefined value to get. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue> 
     */
    open class func getProductParameterPredefinedValueWithRequestBuilder(id: Int) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue> {
        var localVariablePath = "/API/ProductParameter/PredefinedValue/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a specific product parameter value
     
     - parameter id: (path) The id of the product parameter value to get. 
     - parameter predefinedValueId: (query) The predefined value id of the product parameter value to get. Only applicable for {ProductParameter.Models.ProductParameterType.Multi}. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getProductParameterValue(id: Int, predefinedValueId: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameterValue?, _ error: Error?) -> Void)) -> RequestTask {
        return getProductParameterValueWithRequestBuilder(id: id, predefinedValueId: predefinedValueId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a specific product parameter value
     - GET /API/ProductParameter/Value/{id}
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter id: (path) The id of the product parameter value to get. 
     - parameter predefinedValueId: (query) The predefined value id of the product parameter value to get. Only applicable for {ProductParameter.Models.ProductParameterType.Multi}. (optional)
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue> 
     */
    open class func getProductParameterValueWithRequestBuilder(id: Int, predefinedValueId: String? = nil) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue> {
        var localVariablePath = "/API/ProductParameter/Value/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "predefinedValueId": (wrappedValue: predefinedValueId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterValue>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Updates a product parameter
     
     - parameter id: (path) The id of the product parameter to update. 
     - parameter productParameter: (body) The product parameter data to update. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateProductParameter(id: Int, productParameter: ProductParameterModelsWriteProductParameter, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameter?, _ error: Error?) -> Void)) -> RequestTask {
        return updateProductParameterWithRequestBuilder(id: id, productParameter: productParameter).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates a product parameter
     - PUT /API/ProductParameter/{id}
     - Leaving out a property will ensure no changes are made to that property. Collection properties will delete and/or add as necessary to match the supplied data.
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter id: (path) The id of the product parameter to update. 
     - parameter productParameter: (body) The product parameter data to update. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameter> 
     */
    open class func updateProductParameterWithRequestBuilder(id: Int, productParameter: ProductParameterModelsWriteProductParameter) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameter> {
        var localVariablePath = "/API/ProductParameter/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameter)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameter>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update a product parameter group
     
     - parameter id: (path) The id of the product parameter group to update. 
     - parameter productParameterGroup: (body) The product parameter group data to update. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateProductParameterGroup(id: Int, productParameterGroup: ProductParameterModelsWriteProductParameterGroup, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeProductParameterModelsReadProductParameterGroup?, _ error: Error?) -> Void)) -> RequestTask {
        return updateProductParameterGroupWithRequestBuilder(id: id, productParameterGroup: productParameterGroup).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a product parameter group
     - PUT /API/ProductParameter/Group/{id}
     - Leaving out a property will ensure no changes are made to that property. Collection properties will delete and/or add as necessary to match the supplied data.
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter id: (path) The id of the product parameter group to update. 
     - parameter productParameterGroup: (body) The product parameter group data to update. 
     - returns: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup> 
     */
    open class func updateProductParameterGroupWithRequestBuilder(id: Int, productParameterGroup: ProductParameterModelsWriteProductParameterGroup) -> RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup> {
        var localVariablePath = "/API/ProductParameter/Group/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productParameterGroup)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeProductParameterModelsReadProductParameterGroup>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}