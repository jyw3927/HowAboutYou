//
//  URL+Extensions.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation

extension URL {
    
    static func forRandomeGameByName(_ gameName: String) -> URL? {
        return URL(string: "http://\(Constants.IP_ADDRESS):\(Constants.PORT_NUM)/games/\(gameName)/random")
    }
    
    static func forGameByNameAndID(_ gameName: String, _ id: Int) -> URL? {
        return URL(string: "http://\(Constants.IP_ADDRESS):\(Constants.PORT_NUM)/games/\(gameName)/\(id)")
    }
    
}
