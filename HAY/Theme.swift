//
//  Theme.swift
//  toyProj
//
//  Created by 전영우 on 2022/02/02.
//

import SwiftUI

enum Fonts{
    case headlineFont
    case mainTitleFont
    case bodyFont
    case buttonFont
    case warningFont
}

func getFont(name:Fonts) -> Font{
    switch(name){
    case .headlineFont: return Font.custom("Arial", size: 30)
    case .mainTitleFont: return Font.system(size: 30)
    case .bodyFont: return Font.system(size: 12)
    case .buttonFont: return Font.custom("Arial", size:16)
    case .warningFont: return Font.system(size: 8)
    default: return Font.custom("SanFrancisco", size: 20)
    }
}


class Theme:ObservableObject {
    @Published var brandColor: Color
    @Published var backgroundColor: Color
    @Published var contrastBackgroundColor: Color
    @Published var secondaryColor: Color
    @Published var shadowColor: Color
    @Published var bodyTextColor: Color
    
    
    @Published var headlineFont:Font
    @Published var mainTitleFont:Font
    @Published var bodyFont:Font
    @Published var buttonFont:Font
    @Published var warningFont:Font
    
    @Published var largeSpacing:CGFloat
    @Published var mediumSpacing:CGFloat
    @Published var smallSpacing:CGFloat
    
    init(brandColor:Color, backgroundColor:Color, contrastBackgroundColor:Color, secondaryColor:Color, shadowColor:Color, bodyTextColor:Color, headlineFont:Font, mainTitleFont:Font, bodyFont:Font, buttonFont:Font, warningFont:Font, largeSpacing:CGFloat, mediumSpacing:CGFloat, smallSpacing:CGFloat){
        self.brandColor = brandColor
        self.backgroundColor = backgroundColor
        self.contrastBackgroundColor = contrastBackgroundColor
        self.secondaryColor = secondaryColor
        self.shadowColor = shadowColor
        self.bodyTextColor = bodyTextColor
        self.headlineFont = headlineFont
        self.mainTitleFont = mainTitleFont
        self.bodyFont = bodyFont
        self.buttonFont = buttonFont
        self.warningFont = warningFont
        self.largeSpacing = largeSpacing
        self.mediumSpacing = mediumSpacing
        self.smallSpacing = smallSpacing
        
    }
}

var themes: [Theme] = [
    //default
    Theme(brandColor: CGColor(0x552233) as Color,
          backgroundColor: Color(hex: 0xddee44),
          contrastBackgroundColor: Color(hex: 0xf2c233),
          secondaryColor: Color(hex: 0x26ba2d),
          shadowColor: Color(hex: 0x336688),
          bodyTextColor: Color(hex: 0x55dcb2),
          
          headlineFont: getFont(name: .headlineFont),
          mainTitleFont:getFont(name: .mainTitleFont),
          bodyFont: getFont(name: .bodyFont),
          buttonFont: getFont(name: .buttonFont),
          warningFont: getFont(name: .warningFont),
          
          largeSpacing: 16.0,
          mediumSpacing: 12.0,
          smallSpacing: 4.0
         ),
          
    
    //redTheme
    Theme(brandColor: Color(hex: 0x89aa3d),
          backgroundColor: Color(hex:0xf5ec13),
          contrastBackgroundColor: Color(hex: 0xf2c233),
          secondaryColor: Color(hex: 0x4f2ba1),
          shadowColor: Color(hex: 0x336688),
          bodyTextColor: Color(hex: 0x55dcb2),
          
          headlineFont: getFont(name: .headlineFont),
          mainTitleFont: getFont(name: .mainTitleFont),
          bodyFont: getFont(name: .bodyFont),
          buttonFont: getFont(name: .buttonFont),
          warningFont: getFont(name: .warningFont),
          
          largeSpacing: 16.0,
          mediumSpacing: 6.0,
          smallSpacing: 4.0
         )
          
]
