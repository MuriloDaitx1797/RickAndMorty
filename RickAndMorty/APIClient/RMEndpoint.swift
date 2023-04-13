//
// Created by Murilo Daitx on 12/04/23.
//

import Foundation

/// Represents a unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
