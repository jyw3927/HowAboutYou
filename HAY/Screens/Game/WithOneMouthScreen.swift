//
//  UnanimouslyView.swift
//  HAY
//
//  Created by 전영우 on 2022/03/14.
//

import SwiftUI

struct WithOneMouthScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String = "이구동성"
    
    @State
    private var isFirstItemTapped: Bool = false
    @State
    private var isSecondItemTapped: Bool = false
    
    @ObservedObject private var withOneMouthVM: WithOneMouthViewModel
    
    init() {
        self.withOneMouthVM = WithOneMouthViewModel()
        withOneMouthVM.getWithOneMouthRandomly()
    }

    var body: some View {
            
            ZStack (alignment: .topLeading) {
                
                BGColorView()
                
                VStack {
                    
                    Text(title)
                        .foregroundColor(Color("EnabledColor"))
                        .fontWeight(.bold)
                        .padding(.vertical, 15.0)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isFirstItemTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        
                        Text(self.withOneMouthVM.firstChoice)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .frame(width: 300, height: 200, alignment: .center)
                            .minimumScaleFactor(0.5)
                            
                    }.onTapGesture {
                        self.isFirstItemTapped.toggle()
                        
                        if (isSecondItemTapped) {
                            self.isSecondItemTapped.toggle()
                        }
                    }
                    
                    Text("VS")
                        .font(.system(size: 40)).fontWeight(.semibold).foregroundColor(Color("EnabledColor"))
                    
                    ZStack {
                        Rectangle().frame(width: 300, height: 200, alignment: .center).foregroundColor(isSecondItemTapped ? Color("SecondaryColor") : Color("EnabledColor"))
                        .cornerRadius(20)
                        
                        Text(self.withOneMouthVM.secondChoice)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .frame(width: 300, height: 200, alignment: .center)
                            .minimumScaleFactor(0.5)
                    }.padding(.bottom, 30.0)
                    .onTapGesture {
                        self.isSecondItemTapped.toggle()
                        
                        if (isFirstItemTapped) {
                            self.isFirstItemTapped.toggle()
                        }
                    }
                    
                    Button(action: {
                        self.withOneMouthVM.getWithOneMouthRandomly()
                        self.isFirstItemTapped = false
                        self.isSecondItemTapped = false
                    }, label: {
                        ZStack {
                            Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
                            .cornerRadius(20)

                            Text("랜덤섞기").font(.system(size: 22)).fontWeight(.bold).foregroundColor(.black)
                        }.padding(.vertical, 30)
                    })
                    
//                    ZStack {
//                        Rectangle().frame(width: 140, height: 50, alignment: .center).foregroundColor(Color("SecondaryColor"))
//                        .cornerRadius(20)
//
//                        Text("저장하기").font(.system(size: 22)).fontWeight(.bold)
//                    }.padding(.vertical, 30)
                    
                    Spacer()
                    
                } // VStack
                .frame(width: Constants.screenWidth)
                
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
