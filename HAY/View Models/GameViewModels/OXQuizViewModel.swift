//
//  OXQuizViewModel.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation
import SwiftUI

class OXQuizViewModel: ObservableObject {
    
    @Published var oxQuiz: OXQuiz?
    var httpClient = HTTPClient()
    
    init(oxQuiz: OXQuiz? = nil) {
        self.oxQuiz = oxQuiz
    }
    
    func getOXQuizRandomly() {
        httpClient.getOXQuiz() { result in
            switch result {
                case .success(let game):
                    DispatchQueue.main.async {
                        self.oxQuiz = game
                    }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var id: Int {
        self.oxQuiz?.id ?? 0
    }
    
    var question: String {
        self.oxQuiz?.question ?? ""
    }
    
    var answer: Bool {
        self.oxQuiz?.answer ?? true
    }
    
}
