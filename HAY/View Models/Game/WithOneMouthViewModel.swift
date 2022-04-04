//
//  WithOneMouthViewModel.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation
import SwiftUI

class WithOneMouthViewModel: ObservableObject {
    
    @Published var withOM: GameModel<WithOneMouth>?
    var httpClient = HTTPClient()
    
    init(withOM: GameModel<WithOneMouth>? = nil) {
        self.withOM = withOM
    }
    
    func getWithOneMouthRandomly() {
        httpClient.getWithOneMouth() { result in
            switch result {
                case .success(let game):
                    DispatchQueue.main.async {
                        self.withOM = game
                    }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var id: Int {
        self.withOM?.data.id ?? 0
    }
    
    var firstChoice: String {
        self.withOM?.data.firstChoice ?? ""
    }
    
    var secondChoice: String {
        self.withOM?.data.secondChoice ?? ""
    }
    
}
