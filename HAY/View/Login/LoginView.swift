//
//  LoginView.swift
//  HAY
//
//  Created by 전영우 on 2022/04/07.
//

import SwiftUI

struct LoginView: View {
    
    @State var emailInput: String = ""
    @State var passwordInput: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Group {
                
                Text("이메일")
                
                Spacer().frame(height: 30)
                
                TextField("이메일을 입력해주세요.", text: $emailInput)
                    .keyboardType(.emailAddress)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.all, 5)
            
                Divider().background(Color(.black))
                
            } // Email input
            
            Spacer().frame(height: 40)
            
            Group {
            
                Text("비밀번호")
                
                Spacer().frame(height: 30)
                
                SecureField("비밀번호를 입력해주세요.", text: $passwordInput)
                    .keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.all, 5)
                
                Divider().background(Color(.black))
                
            } // PW input
            
            Spacer().frame(height: 20)
            
            Button(action: {
                print("Login button clicked")
            }, label: {
                ZStack {
                    Rectangle().fill(LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]), startPoint: .leading, endPoint: .trailing)).frame(width: Constants.screenWidth - 60, height: 58, alignment: .center)
                    .cornerRadius(20)
                    
                    Text("로그인")
                        .font(.system(size: 18))
                        .foregroundColor(Color("EnabledColor"))
                }.padding(.vertical, 30)
            })
            
            HStack (spacing: 25) {
                
                Spacer().frame(width: 10)
                
                Button(action: {
                    print("ID find button clicked")
                }, label: {
                    Text("아이디 찾기")
                        .font(.system(size: 13))
                        .foregroundColor(Color("CategoryBarColor"))
                })
                
                Divider()
                    .frame(height: 15)
                    .background(Color("CategoryBarColor"))
                
                Button(action: {
                    print("PW Find button clicked")
                }, label: {
                    Text("비밀번호 찾기")
                        .font(.system(size: 13))
                        .foregroundColor(Color("CategoryBarColor"))
                })
                
                Divider()
                    .frame(height: 15)
                    .background(Color("CategoryBarColor"))
                
                Button(action: {
                    print("register button clicked")
                }, label: {
                    Text("회원가입")
                        .font(.system(size: 13))
                        .foregroundColor(Color("CategoryBarColor"))
                })
                
            } // HStack
                
        } // VStack
        .padding(.horizontal, 30)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
