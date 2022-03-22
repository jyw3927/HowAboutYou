//
//  HTTPClient.swift
//  HAY
//
//  Created by 전영우 on 2022/03/22.
//

import Foundation
import Alamofire

enum NetworkError: Error {
    case badURL
    case noData
    case decodingError
}

class HTTPClient {
    
//    func getGame (_ gameModelName: Codable) { 이런식으로 하나로 통일하는법
    
    // 이건 Alamofire임.
//    func getBalanceGame() {
//        let url = URL.forRandomGameByName("balance-game")
//
//        AF.request(url!,
//                   method: .get,
//                   parameters: nil,
//                   encoding: URLEncoding.default,
//                   headers: ["Content-Type":"application/json", "Accept":"application/json"])
//            .validate(statusCode: 200..<300)
//            .responseDecodable(of: BalanceGame.self) { (json) in
//
//                print(json)
//
//        }
//    }
    
    func getBalanceGame(completion: @escaping (Result<BalanceGame, NetworkError>) -> Void) {
        
        guard let url = URL.forRandomGameByName("balance-game") else {
            return completion(.failure(.badURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let balanceGame = try? JSONDecoder().decode(BalanceGame.self, from: data) else {
                return completion(.failure(.decodingError))
            }
            
            completion(.success(balanceGame))
            
        }.resume()
        
    }
    
}
