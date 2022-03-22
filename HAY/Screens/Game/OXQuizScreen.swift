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
                
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                                startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
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
                        .padding(.horizontal, 30)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isAnswerTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text(isAnswerTapped ? self.oxQuizVM.answer ? "O" : "X" : "정답보기").font(.system(size: 30)).fontWeight(.bold)
                    }.padding(.bottom, 30.0)
                        .onTapGesture {
                            self.isAnswerTapped.toggle()
                        }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    HStack {
                        Button(action: {
                            self.oxQuizVM.getOXQuizRandomly()
                            self.isAnswerTapped = false
                        }, label: {
                            ZStack {
                                Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                                
                                Image(systemName: "arrow.left").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            self.oxQuizVM.getOXQuizRandomly()
                            self.isAnswerTapped = false
                        }, label: {
                            ZStack {
                                Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                                
                                Image(systemName: "arrow.right").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                        })
                        
                    }.padding(.horizontal, 50)
                    
//                    ZStack {
//                        Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
//                        .cornerRadius(20)
//
//                        Text("저장하기").font(.system(size: 22)).fontWeight(.bold)
//                    }.padding(.vertical, 30)
                    
                    Spacer()
                    
                } // VStack
                
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
