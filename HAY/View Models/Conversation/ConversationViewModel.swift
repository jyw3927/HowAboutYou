//
//  ConversationViewModel.swift
//  HAY
//
//  Created by 전영우 on 2022/04/04.
//

import Foundation
import SwiftUI

class ConversationViewModel: ObservableObject {
    
    @Published var conversation: ConversationModel?
    let httpClient = HTTPClient()
    
    init(conversation: ConversationModel? = nil) {
        self.conversation = conversation
    }
    
    func getConversationRandomly(_ topic: String) {
        
        if topic.isEmpty {
            return
        }
        
        httpClient.getConversation(topic: topic.trimmedAndEscaped()) { result in
            switch result {
            case.success(let data):
                DispatchQueue.main.async {
                    self.conversation = data
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    var id: Int {
        self.conversation?.data.id ?? 0
    }
    
    var category: String {
        self.conversation?.data.category ?? ""
    }
    
    var question: String {
        self.conversation?.data.question ?? ""
    }
}
