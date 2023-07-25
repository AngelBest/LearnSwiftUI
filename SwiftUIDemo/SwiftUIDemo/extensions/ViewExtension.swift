//
//  ViewExtension.swift
//  SwiftUIDemo
//
//  Created by 宋秀腾 on 2023-07-03.
//

import Foundation
import SwiftUI

extension View {

    func placeholder(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> some View) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
    
    func placeholder(_ placeholder: String = "",
                     color placeholderColor: Color = .placeholder,
                     when shouldShow: Bool,
                     alignment: Alignment = .leading) -> some View {
        
        ZStack(alignment: alignment) {
            Text(placeholder)
                .foregroundColor(placeholderColor)
                .opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
