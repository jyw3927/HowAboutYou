//
//  String+Extensions.swift
//  HAY
//
//  Created by 전영우 on 2022/04/08.
//

import Foundation

extension String {
    
    func trimmedAndEscaped() -> String {
        
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
