//
//  UserInfoView.swift
//  HAY
//
//  Created by 전영우 on 2022/04/11.
//

import SwiftUI

struct UserInfoView: View {
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            HStack {
                
                Image("Attach")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 77, height: 77)
                    .clipShape(Circle())
                
                VStack (alignment: .leading) {
                    Text("Name")
                        .font(.system(size: 21))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("EnabledColor"))
                    
                    Text("@id")
                        .font(.system(size: 15))
                        .foregroundColor(Color("EnabledColor"))
                }
                
                Spacer()
                
                Button(action: {
                    print("setting")
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color("DetailColor"))
                        
                        Image("setting")
                    }
                })
                
            } // HStack
            
            Spacer()
                .frame(height: 40)
            
            HStack {
                Text("친구사이")
                    .font(.system(size: 15))
                    .foregroundColor(Color("EnabledColor"))
                
                Text("23")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("EnabledColor"))
            } // HStack
            
        } // VStack
        .padding(.horizontal, 25)
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
