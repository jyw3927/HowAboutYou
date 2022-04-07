//
//  ConversationModel.swift
//  HAY
//
//  Created by 전영우 on 2022/04/04.
//

import Foundation

struct ConversationModel: Codable {
    let status: Int
    let message: String
    let data: [Conversation]
}

struct Conversation: Codable {
    let id: Int
    let category: String
    let question: String
}
