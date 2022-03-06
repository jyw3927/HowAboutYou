//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct GameModel {
    let name: String
    let imageUrl: String
}

struct GameTabView: View {
    
    var title: String
    
    let gameList : [GameModel] = [
        GameModel(name: "밸런스게임", imageUrl: "game1"),
        GameModel(name: "이구동성", imageUrl: "game2"),
        GameModel(name: "O/X 퀴즈", imageUrl: "game3"),
        GameModel(name: "상식퀴즈", imageUrl: "game4"),
        GameModel(name: "아아ㅏ아ㅏ", imageUrl: "game5")
    ]

    var body: some View {

            ZStack {

                LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                                startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

                VStack {

                    Text(title)
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .padding(.top, 12.0)
                    
                    
//                    List(gameList, id: \.name) { item in NavigationLink(
//                        destination: BalanceView(title: item.name),
//                        label: {
//                            GameTabCard(imageURL: item.imageUrl, gameName: item.name) })}
//                        .listRowBackground(Color.green)
//                        .onAppear() {
//                                          UITableView.appearance().backgroundColor = UIColor.clear
//                                          UITableViewCell.appearance().backgroundColor = UIColor.clear
//                                      }
                    
                    ScrollView {
                        NavigationLink(destination: BalanceView(title: "밸런스게임"), label: {
                            GameTabCard(imageURL: "game1", gameName: "밸런스게임").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: BalanceView(title: "이구동성"), label: {
                            GameTabCard(imageURL: "game2", gameName: "이구동성").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: BalanceView(title: "O/X 퀴즈"), label: {
                            GameTabCard(imageURL: "game3", gameName: "O/X 퀴즈").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: BalanceView(title: "상식게임"), label: {
                            GameTabCard(imageURL: "game4", gameName: "상식게임").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: BalanceView(title: "아아ㅏㅏ아"), label: {
                            GameTabCard(imageURL: "game5", gameName: "아ㅏ아ㅏㅏㅇ").padding(15)
                        })
                    }
                    
                } // VStack
                
            } // ZStack
            .navigationTitle("")
            .navigationBarHidden(true)
            
    }
}

struct GameTabView_Previews: PreviewProvider {
    static var previews: some View {
        GameTabView(title: "Hello")
    }
}
