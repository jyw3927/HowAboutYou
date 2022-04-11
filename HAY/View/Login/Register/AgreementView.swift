//
//  SwiftUIView.swift
//  HAY
//
//  Created by 전영우 on 2022/04/07.
//

import SwiftUI

struct AgreementView: View {
    
    @State
    private var isFirstItemAgreed: Bool = false
    @State
    private var isSecondItemAgreed: Bool = false
    
    var body: some View {
        
        VStack {
            
            ProgressView(progress: 1)
            
            Spacer()
                .frame(height: 50)
        
            VStack (alignment: .leading) {
                
                Text("이용 약관 동의")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                
                Spacer()
                    .frame(height: 35)
                
                HStack {
                    Button(action: {
                        isFirstItemAgreed.toggle()
                    }, label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(isFirstItemAgreed ? .blue : Color("DetailColor"))
                    })
                    
                    Text("이용약관 (필수)")
                        .font(.system(size: 15))
                }
                
                Rectangle()
                    .frame(width: 347, height: 200)
                    .foregroundColor(Color("EnabledColor"))
                    .border(Color("DetailColor"))
                    .cornerRadius(11)
                
                Spacer()
                    .frame(height: 30)
                
                HStack {
                    Button(action: {
                        isSecondItemAgreed.toggle()
                    }, label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(isSecondItemAgreed ? .blue : Color("DetailColor"))
                    })
                    
                    Text("개인정보 수집 및 이용 동의 (필수)")
                        .font(.system(size: 15))
                }
                
                Rectangle()
                    .frame(width: 347, height: 200)
                    .foregroundColor(Color("EnabledColor"))
                    .border(Color("DetailColor"))
                    .cornerRadius(11)
                
                Spacer()
                
                if (isFirstItemAgreed && isSecondItemAgreed) {
                    Button(action: {
                        // 넘어가자
                    }, label: {
                        RegisterButtonView(label: "동의합니다.", isValidated: true)
                    })
                    .padding(.bottom, 70)
    
                } else {
                    Button(action: {
                        // 넘어가자
                    }, label: {
                        RegisterButtonView(label: "동의합니다.", isValidated: false)
                    })
                    .padding(.bottom, 70)
                }
                
            } // VStack
        }
    }
}

struct AgreementView_Previews: PreviewProvider {
    static var previews: some View {
        AgreementView()
    }
}
