//
//  QuizView.swift
//  HAY
//
//  Created by 전영우 on 2022/03/14.
//

import SwiftUI

struct CommonSenseQuizScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String = "상식퀴즈"
    
    @State
    private var isAnswerTapped: Bool = false
    
    @ObservedObject private var commonSenseQuizVM: CommonSenseQuizViewModel
    
    init() {
        self.commonSenseQuizVM = CommonSenseQuizViewModel()
        commonSenseQuizVM.getCommonSenseQuizRandomly()
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
                    
                    Text(self.commonSenseQuizVM.question)
                        .font(.system(size: 25))
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isAnswerTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text(isAnswerTapped ? self.commonSenseQuizVM.answer : "정답보기").font(.system(size: 30)).fontWeight(.bold)
                    }.padding(.bottom, 30.0)
                        .onTapGesture {
                            self.isAnswerTapped.toggle()
                        }
                    
                    Spacer().frame(height: 50)
                    
                    Button(action: {
                        self.commonSenseQuizVM.getCommonSenseQuizRandomly()
                        self.isAnswerTapped = false
                    }, label: {
                        ZStack {
                            Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
                            .cornerRadius(20)

                            Text("랜덤섞기").font(.system(size: 22)).fontWeight(.bold).foregroundColor(.black)
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
