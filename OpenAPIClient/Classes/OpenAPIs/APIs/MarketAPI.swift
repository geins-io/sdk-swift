//
// MarketAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MarketAPI {

    /**
     * enum for parameter marketIdType
     */
    public enum MarketIdType_getMarketById: Int, CaseIterable {
        case _0 = 0
        case _1 = 1
    }

    /**
     Get a specific market
     
     - parameter marketId: (path) The id of the market to get. 
     - parameter marketIdType: (query) The type of market id supplied. See {Market.Models.MarketIdType} for valid options. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMarketById(marketId: String, marketIdType: MarketIdType_getMarketById? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeMarketModelsMarket?, _ error: Error?) -> Void)) -> RequestTask {
        return getMarketByIdWithRequestBuilder(marketId: marketId, marketIdType: marketIdType).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a specific market
     - GET /API/Market/{marketId}
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter marketId: (path) The id of the market to get. 
     - parameter marketIdType: (query) The type of market id supplied. See {Market.Models.MarketIdType} for valid options. (optional)
     - returns: RequestBuilder<EnvelopeMarketModelsMarket> 
     */
    open class func getMarketByIdWithRequestBuilder(marketId: String, marketIdType: MarketIdType_getMarketById? = nil) -> RequestBuilder<EnvelopeMarketModelsMarket> {
        var localVariablePath = "/API/Market/{marketId}"
        let marketIdPreEscape = "\(APIHelper.mapValueToPathItem(marketId))"
        let marketIdPostEscape = marketIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{marketId}", with: marketIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "marketIdType": (wrappedValue: marketIdType?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeMarketModelsMarket>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Gets a list of all markets
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listMarkets(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: MarketModelsMarket?, _ error: Error?) -> Void)) -> RequestTask {
        return listMarketsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a list of all markets
     - GET /API/Market/List
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - returns: RequestBuilder<MarketModelsMarket> 
     */
    open class func listMarketsWithRequestBuilder() -> RequestBuilder<MarketModelsMarket> {
        let localVariablePath = "/API/Market/List"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketModelsMarket>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
