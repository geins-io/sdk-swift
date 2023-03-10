//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UserAPI {

    /**
     Create user profile
     
     - parameter userProfile: (body) The user profile 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createUserProfile(userProfile: UserModelsWriteUserProfile, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeUserModelsReadUserProfile?, _ error: Error?) -> Void)) -> RequestTask {
        return createUserProfileWithRequestBuilder(userProfile: userProfile).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create user profile
     - POST /API/User
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter userProfile: (body) The user profile 
     - returns: RequestBuilder<EnvelopeUserModelsReadUserProfile> 
     */
    open class func createUserProfileWithRequestBuilder(userProfile: UserModelsWriteUserProfile) -> RequestBuilder<EnvelopeUserModelsReadUserProfile> {
        let localVariablePath = "/API/User"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userProfile)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeUserModelsReadUserProfile>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete user profile
     
     - parameter email: (query) Email address 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteUserProfile(email: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteUserProfileWithRequestBuilder(email: email).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete user profile
     - DELETE /API/User/email
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter email: (query) Email address 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func deleteUserProfileWithRequestBuilder(email: String) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/API/User/email"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "email": (wrappedValue: email.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a specific user profile
     
     - parameter query: (body) The details of the query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserProfile(query: UserModelsUserProfileQuery, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeUserModelsReadUserProfile?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserProfileWithRequestBuilder(query: query).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a specific user profile
     - POST /API/User/Query
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter query: (body) The details of the query. 
     - returns: RequestBuilder<EnvelopeUserModelsReadUserProfile> 
     */
    open class func getUserProfileWithRequestBuilder(query: UserModelsUserProfileQuery) -> RequestBuilder<EnvelopeUserModelsReadUserProfile> {
        let localVariablePath = "/API/User/Query"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: query)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeUserModelsReadUserProfile>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update user profile
     
     - parameter userProfile: (body) The user profile 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateUserProfile(userProfile: UserModelsWriteUserProfile, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: EnvelopeUserModelsReadUserProfile?, _ error: Error?) -> Void)) -> RequestTask {
        return updateUserProfileWithRequestBuilder(userProfile: userProfile).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update user profile
     - PUT /API/User
     - API Key:
       - type: apiKey x-apikey (HEADER)
       - name: apiKey
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter userProfile: (body) The user profile 
     - returns: RequestBuilder<EnvelopeUserModelsReadUserProfile> 
     */
    open class func updateUserProfileWithRequestBuilder(userProfile: UserModelsWriteUserProfile) -> RequestBuilder<EnvelopeUserModelsReadUserProfile> {
        let localVariablePath = "/API/User"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userProfile)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EnvelopeUserModelsReadUserProfile>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
