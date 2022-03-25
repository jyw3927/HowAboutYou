//
//  ContentView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI


struct ContentView: View {
    
    @State var isLoading: Bool = true
    @State private var selection = 0
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("PrimaryColor"))
        UITabBar.appearance().backgroundColor = UIColor(Color("PrimaryColor"))
        
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("DisabledColor"))
    }
    
    var body: some View {
        
        ZStack {
          
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

//                    ConversationTabView(title: "대화")
//                        .tabItem {
//
//                            selection == 2 ? Image("conversation_active") : Image("conversation")
//
//                            Text("대화")
//                        }
//                        .tag(2)
    //
    //                MypageTabView(title: "마이페이지")
    //                    .tabItem {
    //
    //                        selection == 3 ? Image("mypage_active") : Image("mypage")
    //
    //                        Text("마이페이지")
    //                    }
    //                    .tag(3)

                } // TabView
                .accentColor(Color("EnabledColor"))
                .navigationTitle("")
                .navigationBarHidden(true)

            }.zIndex(0) // NavigationView
            
            if isLoading {
                launchScreenView.transition(.opacity).zIndex(1)
            }
            
        } // ZStack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                withAnimation { isLoading.toggle() }
            })
        }
        
    }
}

extension ContentView {
    
    var launchScreenView: some View {
        
        ZStack(alignment: .center) {
            
            LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                            startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            Image("LaunchScreenImage")
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
