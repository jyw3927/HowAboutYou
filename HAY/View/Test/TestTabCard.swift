//
//  TestTabCard.swift
//  HAY
//
//  Created by 전영우 on 2022/03/23.
//

import SwiftUI

struct TestTabCard: View {
    
    var imageURL: String
    var testName: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ZStack(alignment: .bottomLeading) {
                
                Image(imageURL).resizable().aspectRatio(contentMode: .fill).frame(width: 180, height: 214).clipped()
                
                Rectangle().frame(width: 180, height: 44).foregroundColor(Color("CardBarColor"))
                
                Text(testName)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color("EnabledColor"))
                    .padding([.leading, .bottom], 10)
                
            }
            
        }
        .cornerRadius(15)
        
    }
}

