//
//  GameTabCard.swift
//  toyProj
//
//  Created by 전영우 on 2022/02/14.
//

import SwiftUI

struct GameTabCard: View {
    
//    var image: String
    var gameName: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ZStack(alignment: .bottomLeading) {
                Image("Game").resizable().aspectRatio(contentMode: .fill).frame(width: 360, height: 130).clipped()
                Rectangle().frame(width: 360, height: 45).foregroundColor(Color("CardBarColor"))
                Text(gameName)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color("EnabledColor"))
                    .padding([.leading, .bottom], 10)
            }
            
        }
        .background(Color.accentColor)
        .cornerRadius(15)
        
    }
}
