//
//  ConversationContentScreen.swift
//  HAY
//
//  Created by 전영우 on 2022/03/30.
//

import SwiftUI

struct ConversationContentScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String
    
//    @ObservedObject private var ConversationVM: ConsonantGameViewModel
//
//    init() {
//        self.ConversationVM = ConsonantGameViewModel()
//        ConversationVM.getConsonantGameRandomly()
//    }

    var body: some View {
            
            ZStack
//        (alignment: .topLeading)
        {
                
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                                startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .center) {
                    
                    Text(title)
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .padding(.vertical, 15.0)
                    
                    Spacer()
                    
                    ZStack {
                        
                        Image("ConversationImageBackground")
                        
                        VStack {
                            
                            Image("Attach")
                            
                            Spacer().frame(height: 50)
                            
                            Text("당신의 어릴 시절 꿈은\n      무엇이었나요?").font(.system(size: 30)).fontWeight(.bold)
                            
                        } // VStack
                        .padding(.trailing, 30)
                        
                    } // ZStack
                    .padding(.leading, 30)
                    
                    Spacer()
                    
                    Button(action: {
//                        self.consonantGameVM.getConsonantGameRandomly()
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
                
//                Button(action: {
//                           presentationMode.wrappedValue.dismiss()
//                       }, label: {
//                           Image(systemName: "chevron.left")
//                               .imageScale(.large)
//                               .padding()
//                       })
//                       .accentColor(Color("EnabledColor"))
                
            } // ZStack
            .navigationTitle(title)
            .navigationBarHidden(true)
//            .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ConversationContentScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConversationContentScreen(title: "과거")
    }
}
