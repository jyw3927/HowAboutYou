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
    
    @ObservedObject private var conversationVM: ConversationViewModel
    
//    @ObservedObject private var ConversationVM: ConsonantGameViewModel
//
    
//    init(showMenu: Binding<Bool>) {
//        self._showMenu = showMenu
//        // other stuff?
//    }
    init(title: String) {
        self.title = title
        self.conversationVM = ConversationViewModel()
        conversationVM.getConversationRandomly(title)
    }

    var body: some View {
            
            ZStack(alignment: .topLeading) {
                
                BGColorView()
                
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
                            
                            Text(self.conversationVM.question).font(.system(size: 30)).fontWeight(.bold)
                            
                        } // VStack
                        .padding(.trailing, 20)
                        
                    } // ZStack
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        self.conversationVM.getConversationRandomly(title)
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

//struct ConversationContentScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ConversationContentScreen(title: "과거")
//    }
//}
