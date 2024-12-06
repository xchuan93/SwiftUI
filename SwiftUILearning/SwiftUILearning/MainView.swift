//
//  MainView.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import SwiftUI

struct MainView: View {
    @State private var currentSelected: Tab = .home

    var body: some View {
        VStack(spacing: 0) {
            Group {
                switch currentSelected {
                case .home:
                    HomeView()
                case .device:
                    DeviceView()
                case .shop:
                    ShopView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Tabbar(currentSelected: $currentSelected)
                .frame(height: 80)
                .background(Color.white)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MainView()
}
