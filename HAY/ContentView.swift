//
//  ContentView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selection = 0
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("PrimaryColor"))
        UITabBar.appearance().backgroundColor = UIColor(Color("PrimaryColor"))
        
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("DisabledColor"))
    }
    
    var body: some View {
        
        NavigationView {
            
            TabView(selection: $selection) {
                
                GameTabView(title: "게임")
                    .tabItem {
                        
                        selection == 0 ? Image("game_active") : Image("game")
                        
                        Text("게임")
                    }
                    .tag(0)
                
                TestTabView(title: "심리테스트")
                    .tabItem {
                        
                        selection == 1 ? Image("test_active") : Image("test")
                        
                        Text("심리테스트")
                    }
                    .tag(1)
                
                ConversationTabView(title: "대화")
                    .tabItem {
                        
                        selection == 2 ? Image("conversation_active") : Image("conversation")
                        
                        Text("대화")
                    }
                    .tag(2)
                
                MypageTabView(title: "마이페이지")
                    .tabItem {
                        
                        selection == 3 ? Image("mypage_active") : Image("mypage")
                        
                        Text("마이페이지")
                    }
                    .tag(3)
                
            } // TabView
            .accentColor(Color("EnabledColor"))
            .navigationTitle("")
            .navigationBarHidden(true)
            
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
