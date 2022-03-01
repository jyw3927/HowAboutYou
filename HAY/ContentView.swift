//
//  ContentView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI


struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("PrimaryColor"))
        
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("DisabledColor"))
    }
    
    var body: some View {
        
        TabView {
            ConversationTabView(title: "대화")
                .tabItem {
                    Image(systemName: "message")
                    Text("대화")
                }
                .tag(0)
            
            GameTabView(title: "게임")        .tabItem {
                    Image(systemName: "die.face.5")
                    Text("게임")
                }
                .tag(0)
            
            TestTabView(title: "심리테스트")
                .tabItem {
                    Image(systemName: "doc.on.clipboard")
                    Text("심리테스트")
                }
                .tag(0)
            
            MypageTabView(title: "마이페이지")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("마이페이지")
                }
                .tag(0)
        } // TabView
        .accentColor(Color("EnabledColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
