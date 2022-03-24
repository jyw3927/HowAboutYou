//
//  URL+Extensions.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation

extension URL {
    
    // GAME
    static func forRandomGameByName(_ gameName: String) -> URL? {
        return URL(string: "http://\(Constants.IP_ADDRESS):\(Constants.PORT_NUM)/games/\(gameName)/random")
    }
    // GAME
    static func forGameByNameAndID(_ gameName: String, _ id: String) -> URL? {
        return URL(string: "http://\(Constants.IP_ADDRESS):\(Constants.PORT_NUM)/games/\(gameName)/\(id)")
    }
    
    // TEST
    static func encodeURL(_ url: String) -> URL? {
        let encodedStr = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        
        return URL(string: encodedStr)!
    }
    
}
