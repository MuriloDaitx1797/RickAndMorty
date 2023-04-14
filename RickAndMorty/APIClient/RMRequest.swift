//
// Created by Murilo Daitx on 12/04/23.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {

    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }

    private let endpoint: RMEndpoint

    private let pathComponents: Set<String>

    private let queryParameters: [URLQueryItem]

    /// URL string for the request to API
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue

        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }

        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                        return "\($0.name)=\(value)"
            }).joined(separator: "&")

            string += argumentString
        }

        return string
    }

    public var url: URL? {
        return URL(string: urlString)
    }

    public let httpMethod: String = "GET"

    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }

}
