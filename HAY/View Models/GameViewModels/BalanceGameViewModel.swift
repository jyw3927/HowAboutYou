//
//  BalanceGameViewModel.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation
import SwiftUI

class BalanceGameViewModel: ObservableObject {
    
    @Published var balance: BalanceGame?
    var httpClient = HTTPClient()
    
    init(balance: BalanceGame? = nil) {
        self.balance = balance
    }
    
    func getBalanceGameRandomly() {
        httpClient.getBalanceGame() { result in
            switch result {
                case .success(let game):
                    DispatchQueue.main.async {
                        self.balance = game
                    }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var id: Int {
        self.balance?.id ?? 0
    }
    
    var firstChoice: String {
        self.balance?.firstChoice ?? ""
    }
    
    var secondChoice: String {
        self.balance?.secondChoice ?? ""
    }
    
}
