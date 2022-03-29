//
//  HexagonView.swift
//  HAY
//
//  Created by 전영우 on 2022/03/30.
//

import SwiftUI

//struct HexagonView: View {
//    
//    var body: some View {
//        
//        Path { path in
//            // 1. 오른쪽 모서리로 커서 이동
//            path.move(to: CGPoint(x: 100, y: 0))
//            // 2.
//            path.addLine(to: CGPoint(x: 150, y: 100))
//            // 3.
//            path.addLine(to: CGPoint(x: 100, y: 200))
//            // 4. 왼쪽 모서리로 커서 이동
//            path.addLine(to: CGPoint(x: 0, y: 200))
//            
//            path.addLine(to: CGPoint(x: -50, y: 100))
//            
//            path.addLine(to: CGPoint(x: 0, y: 0))
//            // 5. 자동으로 경로를 닫음
//            path.closeSubpath()
//        }
////        .stroke()
//        .fill(Color.blue)
//    }
//}

struct PolygonShape: Shape {
    
    var sides: Int
    var xPos: Int
    var yPos: Int
    
    func path(in rect: CGRect) -> Path {
        
//        let h = Double(min(rect.size.width, rect.size.height)) / 6.0
        let h = 100.0
        let c = CGPoint(x: xPos, y: yPos)
        var path = Path()
        
        for i in 0..<sides {
            let angle = (Double(i) * (360.0 / Double(sides))) * Double.pi / 180
            
            let pt = CGPoint(x: c.x + CGFloat(cos(angle) * h), y: c.y + CGFloat(sin(angle) * h))
            
            if i == 0 {
                path.move(to: pt) // move to first vertex
            } else {
                path.addLine(to: pt) // draw line to next vertex
            }
        }
        
        path.closeSubpath()
        
        return path
    }
}
