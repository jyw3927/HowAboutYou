//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct GameTabView: View {
    
    var title: String
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                                startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text(title)
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .padding(.top, 12.0)
                    
                    ScrollView {
                        NavigationLink(destination: BalanceView(title: "밸런스게임"), label: {
                            GameTabCard(gameName: "밸런스게임").padding([.top, .leading, .trailing], 15)
                        })
                        
                        NavigationLink(destination: BalanceView(title: "이구동성"), label: {
                            GameTabCard(gameName: "이구동성").padding([.top, .leading, .trailing], 15)
                        })
                        
                        NavigationLink(destination: BalanceView(title: "O/X 퀴즈"), label: {
                            GameTabCard(gameName: "O/X 퀴즈").padding([.top, .leading, .trailing], 15)
                        })
                        
                        NavigationLink(destination: BalanceView(title: "상식게임"), label: {
                            GameTabCard(gameName: "상식게임").padding([.top, .leading, .trailing], 15)
                        })
                        
                        NavigationLink(destination: BalanceView(title: "아아ㅏㅏ아"), label: {
                            GameTabCard(gameName: "아ㅏ아ㅏㅏㅇ").padding(15)
                        })
                    }
                    
                } // VStack
                
            } // ZStack
            .navigationTitle("")
            .navigationBarHidden(true)
                
        } // NavigationView
    }
}
