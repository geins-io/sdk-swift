//
// ShippingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ShippingAPI {

    /**
     Create a new parcel group
     
     - parameter parcelGroupOptions: (body) Options for the new parcel group. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createParcelGroup(parcelGroupOptions: ShippingModelsParcelGroupOptions, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeInt?, _ error: Error?) -> Void)) -> RequestTask {
        return createParcelGroupWithRequestBuilder(parcelGroupOptions: parcelGroupOptions).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a new parcel group
     - POST /API/Shipping/ParcelGroup
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter parcelGroupOptions: (body) Options for the new parcel group. 
     - returns: RequestBuilder<EnvelopeInt> 
     */
    open class func createParcelGroupWithRequestBuilder(parcelGroupOptions: ShippingModelsParcelGroupOptions) -> RequestBuilder<EnvelopeInt> {
        let localVariablePath = "/API/Shipping/ParcelGroup"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: parcelGroupOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeInt>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Query shipping options
     
     - parameter shippingQuery: (body) The query to filter shipping options by. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func queryShippingOptions(shippingQuery: ShippingModelsShippingQuery, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [ShippingModelsShippingOption]?, _ error: Error?) -> Void)) -> RequestTask {
        return queryShippingOptionsWithRequestBuilder(shippingQuery: shippingQuery).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Query shipping options
     - POST /API/Shipping/Query
     - No response envelope.
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter shippingQuery: (body) The query to filter shipping options by. 
     - returns: RequestBuilder<[ShippingModelsShippingOption]> 
     */
    open class func queryShippingOptionsWithRequestBuilder(shippingQuery: ShippingModelsShippingQuery) -> RequestBuilder<[ShippingModelsShippingOption]> {
        let localVariablePath = "/API/Shipping/Query"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: shippingQuery)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[ShippingModelsShippingOption]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}