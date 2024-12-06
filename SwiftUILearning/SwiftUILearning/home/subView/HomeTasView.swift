//
//  HomeTasView.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import SwiftUI

struct HomeTasView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Tasbih Total :")
                    .foregroundColor(Color.hexColor(0xF9F9F9))
                    .font(Font.montserratBold(size: 16))
                Spacer()
                Text("1200000")
                    .foregroundColor(Color.hexColor(0xF9F9F9))
                    .font(Font.montserratBold(size: 16))
            }
            .padding(.horizontal,12)
            .padding(.top,20)
            Spacer()
            
            HStack(spacing:15) {
                homeTasSubView()
                homeTasSubView()
            }
            .padding(.horizontal,12)
            .padding(.bottom,20)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 154)
        .background(Color.hexColor(0x003324))
        .cornerRadius(12)
        .padding(.horizontal,16)
    }
}

#Preview {
    HomeTasView()
}
