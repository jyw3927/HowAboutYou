//
//  ConsonantView.swift
//  HAY
//
//  Created by 전영우 on 2022/03/14.
//

import SwiftUI

struct ConsonantView: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String
    
    @State
    private var isAnswerTapped: Bool = false

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
                    
                    Text("여러가지 감정을 뜻하는\n사자성어 희노애락은\n각각 어떤 감정을 뜻하나요?")
                        .font(.system(size: 25))
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isAnswerTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text(isAnswerTapped ? "기쁨, 노여움,\n슬픔, 즐거움" : "정답보기").font(.system(size: 30)).fontWeight(.bold)
                    }.padding(.bottom, 30.0)
                        .onTapGesture {
                            self.isAnswerTapped.toggle()
                        }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    HStack {
                        ZStack {
                            Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                            
                            Image(systemName: "arrow.left").resizable().frame(width: 20, height: 20)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                            
                            Image(systemName: "arrow.right").resizable().frame(width: 20, height: 20)
                        }
                        
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

struct Previews_ConsonantView_Previews: PreviewProvider {
    static var previews: some View {
        ConsonantView(title: "초성퀴즈")
    }
}
