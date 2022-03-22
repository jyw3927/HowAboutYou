//
//  ConsonantGameViewModel.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation
import SwiftUI

class ConsonantGameViewModel: ObservableObject {
    
    @Published var consonant: ConsonantGame?
    var httpClient = HTTPClient()
    
    init(consonant: ConsonantGame? = nil) {
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
        self.consonant?.id ?? 0
    }
    
    var firstChoice: String {
        self.consonant?.consonant ?? ""
    }
    
    var secondChoice: String {
        self.consonant?.example ?? ""
    }
    
}
