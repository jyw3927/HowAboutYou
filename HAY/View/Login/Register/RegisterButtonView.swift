//
//  File.swift
//  HAY
//
//  Created by 전영우 on 2022/04/07.
//

import SwiftUI

struct RegisterButtonView: View {
    
    var label: String
    @State var isValidated: Bool = false
    
    var body: some View {
        
        ZStack {
        
            Rectangle()
                .frame(width: 347, height: 58)
                .foregroundColor(isValidated ? Color("PrimaryColor") : Color("DisabledColor"))
            
            Text(label)
                .foregroundColor(Color("EnabledColor"))
                .font(.system(size: 18))
            
        } // ZStack
    }
}
