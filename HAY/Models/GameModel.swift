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

struct WithOneMouth: Codable {
    let id: Int
    let firstChoice: String
    let secondChoice: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case firstChoice = "words1"
        case secondChoice = "words2"
    }
    
}

struct OXQuiz: Codable {
    let id: Int
    let question: String
    let answer: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case question = "question"
        case answer = "answer"
    }
    
}

struct CommonSenseQuiz: Codable {
    let id: Int
    let question: String
    let answer: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case question = "question"
        case answer = "answer"
    }
    
}

struct ConsonantGame: Codable {
    let id: Int
    let consonant: String
    let example: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case consonant = "consonant"
        case example = "example"
    }
    
}
