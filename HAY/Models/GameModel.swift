//
//  BalanceGame.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation

struct BalanceGame: Codable {
    let id: Int
    let firstChoice: String
    let secondChoice: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case firstChoice = "solution1"
        case secondChoice = "solution2"
    }
    
}
