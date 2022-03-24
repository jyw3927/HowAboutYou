//
//  File.swift
//  HAY
//
//  Created by 전영우 on 2022/03/24.
//

import SwiftUI
import WebKit
 
struct TestWebView: UIViewRepresentable {
   
    var urlToEncode: String
    
    //ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        //unwrapping
//        guard let url = URL(string: self.urlToLoad) else {
//            return WKWebView()
//        }
        guard let urlToLoad = URL.encodeURL(urlToEncode) else {
            return WKWebView()
        }
        
        //웹뷰 인스턴스 생성
        let webView = WKWebView()
        
        //웹뷰를 로드한다
        webView.load(URLRequest(url: urlToLoad))
        return webView
    }
    
    //업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<TestWebView>) {
        
    }
}
