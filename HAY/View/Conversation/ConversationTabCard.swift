//
//  ConversationTabCard.swift
//  HAY
//
//  Created by 전영우 on 2022/03/30.
//

import SwiftUI

struct ConversationTabCard: View {

    var topic: String
    var x: Int
    var y: Int

    var body: some View {

        ZStack {

            PolygonShape(sides: 6, xPos: x, yPos: y)
                .fill(Color("SecondaryColor"))
                .zIndex(0)

            Text(topic)
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.black)
                .position(CGPoint(x: x, y: y))
                .zIndex(1)

        }

    }
}
