//
//  ProgressView.swift
//  HAY
//
//  Created by 전영우 on 2022/04/11.
//

import SwiftUI

struct ProgressView: View {
    let progress: Int
    
    var body: some View {
        
        HStack (spacing: 0) {
            
            ZStack {
                Circle()
                    .stroke(progress == 1 ? Color(.black) : Color("DetailColor"), lineWidth: 1)
                    .frame(width: 18, height: 18)
                    .background(Circle().foregroundColor(progress == 1 ? Color(.black) : Color("EnabledColor")))
                
                Text("1")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(progress == 1 ? Color("EnabledColor") : Color("DetailColor"))
            }
            
            Rectangle()
                .frame(width: 12, height: 1)
                .foregroundColor(Color("DetailColor"))
            
            ZStack {
                Circle()
                    .stroke(progress == 2 ? Color(.black) : Color("DetailColor"), lineWidth: 1)
                    .frame(width: 18, height: 18)
                    .background(Circle().foregroundColor(progress == 2 ? Color(.black) : Color("EnabledColor")))
                
                Text("2")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(progress == 2 ? Color("EnabledColor") : Color("DetailColor"))
            }
            
            Rectangle()
                .frame(width: 12, height: 1)
                .foregroundColor(Color("DetailColor"))
            
            ZStack {
                Circle()
                    .stroke(progress == 3 ? Color(.black) : Color("DetailColor"), lineWidth: 1)
                    .frame(width: 18, height: 18)
                    .background(Circle().foregroundColor(progress == 3 ? Color(.black) : Color("EnabledColor")))
                
                Text("3")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(progress == 3 ? Color("EnabledColor") : Color("DetailColor"))
            }
            
            Rectangle()
                .frame(width: 12, height: 1)
                .foregroundColor(Color("DetailColor"))
            
            ZStack {
                Circle()
                    .stroke(progress == 4 ? Color(.black) : Color("DetailColor"), lineWidth: 1)
                    .frame(width: 18, height: 18)
                    .background(Circle().foregroundColor(progress == 4 ? Color(.black) : Color("EnabledColor")))
                
                Text("4")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(progress == 4 ? Color("EnabledColor") : Color("DetailColor"))
            }
            
        } // HStack
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(progress: 1)
    }
}
