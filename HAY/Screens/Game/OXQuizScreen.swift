//
//  OXView.swift
//  HAY
//
//  Created by 전영우 on 2022/03/14.
//

import SwiftUI

struct OXQuizScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String = "O/X 퀴즈"
    
    @State
    private var isAnswerTapped: Bool = false
    
    @ObservedObject private var oxQuizVM: OXQuizViewModel
    
    init() {
        self.oxQuizVM = OXQuizViewModel()
        oxQuizVM.getOXQuizRandomly()
    }

    var body: some View {
            
            ZStack (alignment: .topLeading) {
                
                BGColorView()
                
                VStack {
                    
                    Text(title)
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .padding(.vertical, 15.0)
                    
                    Spacer()
                    
                    Text(self.oxQuizVM.question)
                        .font(.system(size: 25))
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 80)
                        .minimumScaleFactor(0.7)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isAnswerTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text(isAnswerTapped ? self.oxQuizVM.answer ? "O" : "X" : "정답보기").font(.system(size: 30)).fontWeight(.bold)
                    }.padding(.bottom, 30.0)
                        .onTapGesture {
                            self.isAnswerTapped.toggle()
                        }
                    
                    Spacer().frame(height: 50)
                    
                    Button(action: {
                        self.oxQuizVM.getOXQuizRandomly()
                        self.isAnswerTapped = false
                    }, label: {
                        ZStack {
                            Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
                            .cornerRadius(20)

                            Image("random")
                                .resizable()
                                .frame(width: 45, height: 30)
                        }.padding(.vertical, 30)
                    })
                    
//                    ZStack {
//                        Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
//                        .cornerRadius(20)
//
//                        Text("저장하기").font(.system(size: 22)).fontWeight(.bold)
//                    }.padding(.vertical, 30)
                    
                    Spacer()
                    
                } // VStack
                .frame(width: Constants.screenWidth)
                
                Button(action: {
                           presentationMode.wrappedValue.dismiss()
                       }, label: {
                           Image(systemName: "chevron.left")
                               .imageScale(.large)
                               .padding()
                       })
                       .accentColor(Color("EnabledColor"))
                
            } // ZStack
            .navigationTitle(title)
            .navigationBarHidden(true)
//            .navigationBarTitleDisplayMode(.inline)
        
    }
}
