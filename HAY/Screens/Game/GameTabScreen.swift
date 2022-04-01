//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct GameTabScreen: View {
    
    var title: String
    
    var body: some View {

            ZStack {

                BGColorView()

                VStack {

                    Text(title)
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .padding(.top, 12.0)
                    
                    ScrollView {
                        NavigationLink(destination: BalanceGameScreen(), label: {
                            GameTabCard(imageURL: "game1", gameName: "밸런스게임").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: WithOneMouthScreen(), label: {
                            GameTabCard(imageURL: "game2", gameName: "이구동성").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: OXQuizScreen(), label: {
                            GameTabCard(imageURL: "game3", gameName: "O/X 퀴즈").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: CommonSenseQuizScreen(), label: {
                            GameTabCard(imageURL: "game4", gameName: "상식퀴즈").padding([.top, .leading, .trailing], 15)
                        })

                        NavigationLink(destination: ConsonantGameScreen(), label: {
                            GameTabCard(imageURL: "game5", gameName: "초성퀴즈").padding(15)
                        })
                    }
                    
                } // VStack
                
            } // ZStack
            .navigationTitle("")
            .navigationBarHidden(true)
            
    }
}
