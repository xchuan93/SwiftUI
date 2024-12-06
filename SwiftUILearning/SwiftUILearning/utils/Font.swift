//
//  Font.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import Foundation

import SwiftUI

extension Font {
    
    static func montserratRegular(size: CGFloat) -> Font {
        return Font(UIFont(name: "Montserrat-Regular", size: size) ?? UIFont.systemFont(ofSize: size))
    }
    
    static func montserratMedium(size: CGFloat) -> Font {
        return Font(UIFont(name: "Montserrat-Medium", size: size) ?? UIFont.systemFont(ofSize: size))
    }
    
    static func montserratSemiBold(size: CGFloat) -> Font {
        return Font(UIFont(name: "Montserrat-SemiBold", size: size) ?? UIFont.systemFont(ofSize: size))
    }
    
    static func montserratBold(size: CGFloat) -> Font {
        return Font(UIFont(name: "Montserrat-Bold", size: size) ?? UIFont.systemFont(ofSize: size))
    }
}
