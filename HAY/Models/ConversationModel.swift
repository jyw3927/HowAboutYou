//
//  ConversationModel.swift
//  HAY
//
//  Created by 전영우 on 2022/04/04.
//

import Foundation

struct ConversationModel<T: Codable>: Codable {
    let status: Int
    let message: String
    let data: T
}

struct ConversationData: Codable {
    let id: Int
    let category: String
    let question: String
}
