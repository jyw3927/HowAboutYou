//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct ConversationTabView: View {
    
    var title: String
    
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
                
                ScrollView([.vertical, .horizontal], showsIndicators: false) {
                
                    GeometryReader { geo in
                                
                        ConversationTabCard(topic: "가족", x: 100, y: 100)
                        
                        ConversationTabCard(topic: "너", x: Int(geo.size.width) - 100, y: Int(geo.size.height) / 8)
                        
                        ConversationTabCard(topic: "나", x: Int(geo.size.width) / 2, y: Int(geo.size.height) / 4)
                        
                        ConversationTabCard(topic: "상상", x: Int(geo.size.width) - 100, y: Int(geo.size.height) / 4 + 100)
                        
                        ConversationTabCard(topic: "일상", x: Int(geo.size.width) / 2, y: Int(geo.size.height) / 2)
                        
                        ConversationTabCard(topic: "과거", x: 100, y: Int(geo.size.height) / 2 + 100)
                        
                        ConversationTabCard(topic: "미래", x: Int(geo.size.width) / 2, y: Int(geo.size.height) / 2 + 200)
                        
                        ConversationTabCard(topic: "상상", x: Int(geo.size.width) - 100, y: Int(geo.size.height) - 100)
                                
                    }.frame(width: 550, height: 800)
                
                }
                
            } // VStack
            
        } // ZStack
        .navigationTitle("")
        .navigationBarHidden(true)
        
    }
}

struct ConversationTabView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationTabView(title: "대화")
    }
}
