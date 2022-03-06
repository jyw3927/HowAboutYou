//
//  GameModel.swift
//  HAY
//
//  Created by 전영우 on 2022/03/06.
//

struct GameMaker {
    let name: String
    let imageUrl: String
}

extension GameMaker {
    // 정적함수를 이용하여 모든 데이터를 가져옵니다.
    static func all() -> [GameMaker] {
        return [
            GameMaker(name: "밸런스게임", imageUrl: "game1"),
            GameMaker(name: "이구동성", imageUrl: "game2"),
            GameMaker(name: "O/X 퀴즈", imageUrl: "game3"),
            GameMaker(name: "상식퀴즈", imageUrl: "game4"),
            GameMaker(name: "아아ㅏ아ㅏ", imageUrl: "game5")
        ]
    }
}
