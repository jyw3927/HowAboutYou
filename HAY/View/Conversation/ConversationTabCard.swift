//
//  ConversationTabCard.swift
//  HAY
//
//  Created by 전영우 on 2022/03/30.
//

import SwiftUI

struct ConversationTabCard: View {

    var topic: String

    var body: some View {

        VStack(spacing: 0) {
            
            Rectangle()
                .frame(width: 180, height: 30)
                .foregroundColor(Color("EnabledColor"))
        
            ZStack {

                Rectangle()
                    .frame(width: 200, height: 280)
                    .foregroundColor(Color("SecondaryColor"))
                    .cornerRadius(8)
                
                Text(topic)
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.black)

            } // ZStack
            .shadow(radius: 10)
            
        } // VStack

    }
}
