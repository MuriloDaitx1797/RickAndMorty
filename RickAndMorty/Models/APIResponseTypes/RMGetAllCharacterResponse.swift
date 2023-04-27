//
// Created by Murilo Daitx on 14/04/23.
//

import Foundation

struct RMGetAllCharacterResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}
