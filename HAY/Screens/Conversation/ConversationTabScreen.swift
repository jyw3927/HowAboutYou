//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct ConversationTabScreen: View {
    
    var title: String
    
    var body: some View {
        
        ZStack {
            
            BGColorView()
            
            VStack {
                
                Text(title)
                    .foregroundColor(Color("EnabledColor"))
                    .fontWeight(.bold)
                    .padding(.top, 12.0)
                
                ScrollView([.vertical, .horizontal], showsIndicators: false) {
                
                    GeometryReader { geo in
                        
                        NavigationLink(destination: ConversationContentScreen(title: "가족"), label: {
                            ConversationTabCard(topic: "가족", x: 100, y: 100)
                        })
                        
                        NavigationLink(destination: ConversationContentScreen(title: "너"), label: {
                            ConversationTabCard(topic: "너", x: Int(geo.size.width) - 100, y: Int(geo.size.height) / 8)
                        })
                        
                        NavigationLink(destination: ConversationContentScreen(title: "나"), label: {
                            ConversationTabCard(topic: "나", x: Int(geo.size.width) / 2, y: Int(geo.size.height) / 4)
                        })
                        
                        NavigationLink(destination: ConversationContentScreen(title: "상상"), label: {
                            ConversationTabCard(topic: "상상", x: Int(geo.size.width) - 100, y: Int(geo.size.height) / 4 + 100)
                        })
                        
                        NavigationLink(destination: ConversationContentScreen(title: "일상"), label: {
                            ConversationTabCard(topic: "일상", x: Int(geo.size.width) / 2, y: Int(geo.size.height) / 2)
                        })
                        
                        NavigationLink(destination: ConversationContentScreen(title: "과거"), label: {
                            ConversationTabCard(topic: "과거", x: 100, y: Int(geo.size.height) / 2 + 100)
                        })
                        
                        NavigationLink(destination: ConversationContentScreen(title: "미래"), label: {
                            ConversationTabCard(topic: "미래", x: Int(geo.size.width) / 2, y: Int(geo.size.height) / 2 + 200)
                        })
                        
                        NavigationLink(destination: ConversationContentScreen(title: "관계"), label: {
                            ConversationTabCard(topic: "관계", x: Int(geo.size.width) - 100, y: Int(geo.size.height) - 100)
                        })
                                
                    }.frame(width: 550, height: 800)
                
                }
                
            } // VStack
            
        } // ZStack
        .navigationTitle("")
        .navigationBarHidden(true)
        
    }
}
