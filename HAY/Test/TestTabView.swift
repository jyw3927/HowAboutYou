//
//  ConversationTabView.swift
//  toyProj
//
//  Created by 전영우 on 2022/01/31.
//

import SwiftUI

struct TestTabView: View {
    
    var title: String
    
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
                
                Spacer()
            } // VStack
            
        } // ZStack
        
    }
}
