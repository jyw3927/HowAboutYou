//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct MyPageScreen: View {
    
    var title: String
    
    var body: some View {
        
        ZStack {
            
            BGColorView()
            
            VStack {
                
                Text(title)
                    .font(.system(size: 20))
                    .foregroundColor(Color("EnabledColor"))
                    .fontWeight(.bold)
                    .padding(.top, 12.0)
                
                Spacer()
                    .frame(height: 60)
                
                UserInfoView()
                
                Spacer()
                    .frame(height: 23)
                
                SavedTabView()
                
                Spacer()
                
            } // VStack
            
        } // ZStack
        .navigationTitle("")
        .navigationBarHidden(true)
        
    }
}

struct MyPageScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyPageScreen(title: "마이페이지")
    }
}
