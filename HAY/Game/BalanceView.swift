//
//  BalanceView.swift
//  toyProj
//
//  Created by 전영우 on 2022/02/14.
//

import SwiftUI

struct BalanceView: View {
    
    var title: String
    
    @State
    private var isFirstItemTapped: Bool = false
    @State
    private var isSecondItemTapped: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                                startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isFirstItemTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        .onTapGesture {
                            self.isFirstItemTapped.toggle()
                            
                            if (isSecondItemTapped) {
                                self.isSecondItemTapped.toggle()
                            }
                        }
                        
                        Text("내 흑역사 전세계에\n공유하고 5억 받기").font(.system(size: 30)).fontWeight(.bold)
                    }
                    
                    Text("VS")
                        .font(.system(size: 40)).fontWeight(.semibold).foregroundColor(Color("EnabledColor"))
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isSecondItemTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text("그냥 살기").font(.system(size: 30)).fontWeight(.bold)
                    }.padding(.bottom, 30.0)
                        .onTapGesture {
                            self.isSecondItemTapped.toggle()
                            
                            if (isFirstItemTapped) {
                                self.isFirstItemTapped.toggle()
                            }
                        }
                    
                    HStack {
                        ZStack {
                            Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                            
                            Image(systemName: "arrow.left").resizable().frame(width: 20, height: 20)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                            
                            Image(systemName: "arrow.right").resizable().frame(width: 20, height: 20)
                        }
                        
                    }.padding(.horizontal, 50)
                    
                    ZStack {
                        Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
                        .cornerRadius(20)
                        
                        Text("저장하기").font(.system(size: 22)).fontWeight(.bold)
                    }.padding(.top, 20)
                    
                } // VStack
                
            } // ZStack
            .navigationTitle(title)
            .navigationBarHidden(true)
//            .navigationBarTitleDisplayMode(.inline)
        } // NavigationView
        
    }
}

struct Previews_BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView(title: "밸런스게임")
    }
}
