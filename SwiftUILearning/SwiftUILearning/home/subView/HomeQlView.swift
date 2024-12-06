//
//  HomeQlView.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import SwiftUI

struct HomeQlView: View {
    
    let ql = ["qibla1","playBack","Layer_1"]
    
    var body: some View {
        HStack(spacing:16) {
            ForEach(ql.indices,id: \.self) { index in
                Button(action: {
                    print("点击\(index)")
                }, label: {
                    Image(ql[index])
                    
                })
                .frame(width: 104,height: 80)
                .background(Color.hexColor(0x559B78))
                .cornerRadius(12)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HomeQlView()
}
