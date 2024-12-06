//
//  Color.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import Foundation
import SwiftUI

extension Color {
    static func hexColor(_ hex: Int) -> Color {
        return Color(
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0
        )
    }
    
    static func hexColor(_ hex: Int, opacity: Double = 1.0) -> Color {
        return Color(
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0
        )
        .opacity(opacity)
    }
}
