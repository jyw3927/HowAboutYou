//
//  ConsonantView.swift
//  HAY
//
//  Created by 전영우 on 2022/03/14.
//

import SwiftUI

struct ConsonantGameScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String = "초성게임"
    
    @State
    private var isAnswerTapped: Bool = false
    
    @ObservedObject private var consonantGameVM: ConsonantGameViewModel
    
    init() {
        self.consonantGameVM = ConsonantGameViewModel()
        consonantGameVM.getConsonantGameRandomly()
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
                    
                    Text("초성이 들어가는 단어를\n돌아가면서 말해보세요!")
                        .font(.system(size: 25))
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 300, alignment: .center).foregroundColor(isAnswerTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text(isAnswerTapped ? self.consonantGameVM.example : self.consonantGameVM.question).font(.system(size: 30)).fontWeight(.bold)
                            .frame(width: 280, height: 300, alignment: .center)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.5)
                    }.padding(.bottom, 30.0)
                        .onTapGesture {
                            self.isAnswerTapped.toggle()
                        }
                    
                    Spacer().frame(height: 50)
                    
                    Button(action: {
                        self.consonantGameVM.getConsonantGameRandomly()
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
