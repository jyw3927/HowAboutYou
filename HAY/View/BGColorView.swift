//
//  BGColorView.swift
//  HAY
//
//  Created by 전영우 on 2022/04/01.
//

import SwiftUI

struct BGColorView: View {
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                        startPoint: .top, endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
        
    }
}
