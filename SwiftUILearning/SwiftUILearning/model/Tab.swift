//
//  Tab.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import Foundation
import SwiftUI

enum Tab: CaseIterable {
    case home
    case device
    case shop
    
    var text: String {
        switch self {
        case .home:
            return "首页"
        case .device:
            return "设备"
        case .shop:
            return "商城"
        }
    }
    
    var icon: String {
        switch self {
        case .home:
            return "home_icon"
        case .device:
            return "device_Icon"
        case .shop:
            return "home_icon"
        }
    }
    
    var selectIcon: String {
        switch self {
        case .home:
            return "home_select_icon"
        case .device:
            return "device_select_Icon"
        case .shop:
            return "shop_select_Icon"
        }
    }
}
