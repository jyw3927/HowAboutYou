//
//  BalanceView.swift
//  toyProj
//
//  Created by 전영우 on 2022/02/14.
//

import SwiftUI
import Alamofire

struct BalanceGameScreen: View {
    @Environment(\.presentationMode) var presentationMode
    let title: String = "밸런스게임"
    
    @ObservedObject private var balanceGameVM: BalanceGameViewModel
    
    @State
    private var isFirstItemTapped: Bool = false
    @State
    private var isSecondItemTapped: Bool = false
    
    init() {
        self.balanceGameVM = BalanceGameViewModel()
        balanceGameVM.getBalanceGameRandomly()
    }

    var body: some View {
            
            ZStack (alignment: .topLeading) {
                
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                                startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text(title)
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .padding(.vertical, 15.0)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isFirstItemTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        .onTapGesture {
                            self.isFirstItemTapped.toggle()
                            
                            if (isSecondItemTapped) {
                                self.isSecondItemTapped.toggle()
                            }
                        }
                        
                        Text(self.balanceGameVM.firstChoice).font(.system(size: 30)).fontWeight(.bold).frame(width: 300, height: 200, alignment: .center).minimumScaleFactor(0.5)
                    }
                    
                    Text("VS")
                        .font(.system(size: 40)).fontWeight(.semibold).foregroundColor(Color("EnabledColor"))
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isSecondItemTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text(self.balanceGameVM.secondChoice).font(.system(size: 30)).fontWeight(.bold).frame(width: 300, height: 200, alignment: .center).minimumScaleFactor(0.5)
                    }.padding(.bottom, 30.0)
                        .onTapGesture {
                            self.isSecondItemTapped.toggle()
                            
                            if (isFirstItemTapped) {
                                self.isFirstItemTapped.toggle()
                            }
                        }
                    
                    HStack {
                        Button(action: {
                            self.balanceGameVM.getBalanceGameRandomly()
                        }, label: {
                            ZStack {
                                Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                                
                                Image(systemName: "arrow.left").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                        })
                        
                        
                        Spacer()
                        
                        Button(action: {
                            self.balanceGameVM.getBalanceGameRandomly()
                        }, label: {
                            ZStack {
                                Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                                
                                Image(systemName: "arrow.right").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                        })
                        
                    }.padding(.horizontal, 50)
                    
//                    ZStack {
//                        Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
//                        .cornerRadius(20)
//
//                        Text("저장하기").font(.system(size: 22)).fontWeight(.bold)
//                    }.padding(.vertical, 30)
                    
                    Spacer()
                    
                } // VStack
                
                Button(action: {
                           presentationMode.wrappedValue.dismiss()
                       }, label: {
                           Image(systemName: "chevron.left")
                               .imageScale(.large)
                               .padding()
                       })
                       .accentColor(Color("EnabledColor"))
                
            } // ZStack
            .navigationTitle(title)
            .navigationBarHidden(true)
//            .navigationBarTitleDisplayMode(.inline)
        
    }
}

//struct Previews_BalanceView_Previews: PreviewProvider {
//    static var previews: some View {
//        BalanceView(title: "밸런스게임")
//    }
//}
