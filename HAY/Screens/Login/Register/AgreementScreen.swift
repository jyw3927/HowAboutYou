//
//  AgreementScreen.swift
//  HAY
//
//  Created by 전영우 on 2022/04/11.
//

import SwiftUI

struct AgreementScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack (alignment: .topLeading) {
            
            AgreementView()
            
            Button(action: {
                       presentationMode.wrappedValue.dismiss()
                   }, label: {
                       Image(systemName: "chevron.left")
                           .imageScale(.large)
                   })
            .accentColor(.black)
            
        } // ZStack
    }
}

struct AgreementScreen_Previews: PreviewProvider {
    static var previews: some View {
        AgreementScreen()
    }
}
