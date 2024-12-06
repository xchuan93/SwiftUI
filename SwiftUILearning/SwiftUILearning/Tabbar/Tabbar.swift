//
//  Tabbar.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import SwiftUI

struct Tabbar: View {
    
    @Binding var currentSelected: Tab
    
    var body: some View {
        HStack{
            ForEach(Tab.allCases, id: \.self) { tabItem in
                Button(action: {
                    currentSelected = tabItem
                }, label: {
                    VStack {
                        Image(tabItem == currentSelected ? tabItem.selectIcon : tabItem.icon)
                            .resizable()
                            .frame(width: 48,height: 48)
                        Text(tabItem.text)
                            .foregroundStyle(tabItem == currentSelected ? Color.hexColor(0x1296db) : Color.hexColor(0x8a8a8a))
                            .font(Font.montserratMedium(size: 14))
                        
                    }
                })
                if tabItem != Tab.allCases.last {
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 50)
        .background(Color.white)
        .frame(maxWidth: .infinity)
        .frame(height: 80)
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
}
