//
//  LoginScreen.swift
//  HAY
//
//  Created by 전영우 on 2022/04/07.
//

import SwiftUI

struct LoginScreen: View {
    
    var body: some View {
        
        NavigationView {
        
            VStack {
                
                Spacer().frame(height: Constants.screenHeight / 3.5)
                
                LoginView()
                
            } // VStack
        } // NavigationView
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
