//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct TestTabView: View {
    
    var title: String
    
    let columns: [GridItem] = [
            GridItem(.flexible(), spacing: -10),
            GridItem(.flexible(), spacing: -10),
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
                
                Spacer(minLength: 30)
                
                ScrollView {
                    
                    LazyVGrid(
                        columns: columns,
                        alignment: .center,
                        spacing: 20,
                        pinnedViews: [],
                        content: {
                            
                            NavigationLink(destination: TestWebView(urlToEncode: "https://www.16personalities.com/ko/무료-성격-유형-검사"), label: {
                                TestTabCard(imageURL: "MBTI", testName: "MBTI")
                            })
                            
                            NavigationLink(destination: TestWebView(urlToEncode: "http://typer.kr/test/ecr/"), label: {
                                TestTabCard(imageURL: "Attach", testName: "애착유형")
                            })
                            
                            NavigationLink(destination: TestWebView(urlToEncode: "http://ego.na.to/test/ego/"), label: {
                                TestTabCard(imageURL: "EgoGram", testName: "에고그램 테스트")
                            })

                            NavigationLink(destination: TestWebView(urlToEncode: "https://mgram.me/ko/"), label: {
                                TestTabCard(imageURL: "MGram", testName: "mgram")
                            })

                            NavigationLink(destination: TestWebView(urlToEncode: "https://eqtest.kr/"), label: {
                                TestTabCard(imageURL: "EQTest", testName: "EQ 테스트")
                            })
                            
                            NavigationLink(destination: TestWebView(urlToEncode: "https://www.simcong.com/quiz/349"), label: {
                                TestTabCard(imageURL: "Marry", testName: "결혼 상대 테스트")
                            })
                            
                            NavigationLink(destination: TestWebView(urlToEncode: "https://type-of-contact.netlify.app/"), label: {
                                TestTabCard(imageURL: "Contact", testName: "연락 유형 테스트")
                            })

                            NavigationLink(destination: TestWebView(urlToEncode: "https://www.banggooso.com/gl/1002/"), label: {
                                TestTabCard(imageURL: "Date", testName: "연애 능력 테스트")
                            })
                            
                        }) // LazyVGrid
                    
                } // ScrollView
            } // VStack
            
        } // ZStack
        .navigationTitle("")
        .navigationBarHidden(true)
        
    }
}

struct TestTabView_Previews: PreviewProvider {
    static var previews: some View {
        TestTabView(title: "심리테스트")
    }
}

