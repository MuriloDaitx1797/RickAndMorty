//
// Created by Murilo Daitx on 12/04/23.
//

import Foundation

/// Primary API service to get Rick and Morty data
final class RMService {
    static let shared = RMService()

    private init() {}

    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {

    }
}
