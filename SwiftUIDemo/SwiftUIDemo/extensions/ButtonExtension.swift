//
//  ButtonExtension.swift
//  SwiftUIDemo
//
//  Created by 宋秀腾 on 2023-07-03.
//

import Foundation
import SwiftUI


public struct ThemeButtonStyle : ButtonStyle {
    var width: CGFloat
    var height: CGFloat
    
    public func makeBody(configuration: ThemeButtonStyle.Configuration) -> some View {
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .frame(width: width, height: height)
            .background(.blue)
            .cornerRadius(height * 0.5)
    }

    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    
}

extension ButtonStyle where Self == ThemeButtonStyle {

    public static var theme: ThemeButtonStyle {
        ThemeButtonStyle(width: (UIScreen.main.bounds.width - 80.0), height: 48.0)
    }
    
    public static func theme(_ width: CGFloat, _ height: CGFloat) -> ThemeButtonStyle {
        ThemeButtonStyle(width: width, height: height)
    }
}



/**
 取消高亮
 */
public struct NoHightButtonStyle: ButtonStyle {
    @ViewBuilder
    public func makeBody(configuration: NoHightButtonStyle.Configuration) -> some View {
        configuration.label
    }
}

extension ButtonStyle where Self == NoHightButtonStyle {
    public static var noHight: NoHightButtonStyle {
        NoHightButtonStyle()
    }
}


