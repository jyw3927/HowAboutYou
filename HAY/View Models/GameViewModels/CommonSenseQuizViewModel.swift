//
//  CommonSenseQuizViewModel.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation
import SwiftUI

class CommonSenseQuizViewModel: ObservableObject {
    
    @Published var commonsense: CommonSenseQuiz?
    var httpClient = HTTPClient()
    
    init(commonsense: CommonSenseQuiz? = nil) {
        self.commonsense = commonsense
    }
    
    func getCommonSenseQuizRandomly() {
        httpClient.getCommonSenseQuiz() { result in
            switch result {
                case .success(let game):
                    DispatchQueue.main.async {
                        self.commonsense = game
                    }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var id: Int {
        self.commonsense?.id ?? 0
    }
    
    var question: String {
        self.commonsense?.question ?? ""
    }
    
    var answer: String {
        self.commonsense?.answer ?? ""
    }
    
}
