//
//  BalanceView.swift
//  toyProj
//
//  Created by 전영우 on 2022/02/14.
//

import SwiftUI
import Alamofire

//struct Game: Codable {
//    var id: Int
//    var solution1: String
//    var solution2: String
//}

struct BalanceView: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String
    
    @State
    private var isFirstItemTapped: Bool = false
    @State
    private var isSecondItemTapped: Bool = false
    
    @State var dataFromServer : String =  "what's the time?"

//        func callCurrentTime() {
//            do {
//                let url = URL(string: "현재시간 호출용 API URL")
//                let response = try String(contentsOf: url!)
//
//                self.dataFromServer = response
//            } catch let error as NSError {
//                print(error.localizedDescription)
//            }
//        }
    
    
    func getTest() {
        let url = "http://35.216.83.86:8080/games/balance-game/random"
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   encoding: URLEncoding.default,
                   headers: ["Content-Type":"application/json", "Accept":"application/json"])
            .validate(statusCode: 200..<300)
            .responseJSON { (json) in
                //여기서 가져온 데이터를 자유롭게 활용하세요.
//                print(json)
                print(String(data: json.data!, encoding: .utf8))
        }
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
                        Button(action: {
                            getTest()
                        }, label: {
                            ZStack {
                                Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                                
                                Image(systemName: "arrow.left").resizable().frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                        })
                        
                        
                        Spacer()
                        
                        ZStack {
                            Circle().frame(width: 50, height: 50).foregroundColor(Color("SecondaryColor"))
                            
                            Image(systemName: "arrow.right").resizable().frame(width: 20, height: 20)
                        }
                        
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

struct Previews_BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView(title: "밸런스게임")
    }
}
