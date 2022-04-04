//
//  ConsonantGameViewModel.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation
import SwiftUI

class ConsonantGameViewModel: ObservableObject {
    
    @Published var consonant: GameModel<ConsonantGame>?
    var httpClient = HTTPClient()
    
    init(consonant: GameModel<ConsonantGame>? = nil) {
        self.consonant = consonant
    }
    
    func getConsonantGameRandomly() {
        httpClient.getConsonantGame() { result in
            switch result {
                case .success(let game):
                    DispatchQueue.main.async {
                        self.consonant = game
                    }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var id: Int {
        self.consonant?.data.id ?? 0
    }
    
    var question: String {
        self.consonant?.data.question ?? ""
    }
    
    var example: String {
        self.consonant?.data.example ?? ""
    }
    
}
