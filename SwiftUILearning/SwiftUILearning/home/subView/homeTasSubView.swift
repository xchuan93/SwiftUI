//
//  homeTasSubView.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import SwiftUI

struct homeTasSubView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Tasbih ")
                    .foregroundColor(Color.hexColor(0xF9F9F9))
                    .font(Font.montserratBold(size: 14))
                Spacer()
            }
            .padding(.leading,12)
            .padding(.top,8)
            
            Text("99999")
                .foregroundColor(Color.hexColor(0xF9F9F9))
                .font(Font.montserratBold(size: 24))
            
            Text("Times")
                .foregroundColor(Color.hexColor(0xC9CDC6))
                .font(Font.montserratRegular(size: 12))
                .padding(.bottom,8)
        }
        .background(Color.hexColor(0x026543))
        .cornerRadius(8)
        
    }
}

#Preview {
    homeTasSubView()
}
