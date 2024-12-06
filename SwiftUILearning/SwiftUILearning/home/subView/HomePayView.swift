//
//  HomePayView.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import SwiftUI

struct HomePayView: View {
    var body: some View {
        ZStack {
            Image("背景插画")
                .resizable()
            
            VStack {
                HStack{
                    Image("默认头像")
                        .resizable()
                        .frame(width: 48,height: 48)
                    Text("Abdullah")
                        .foregroundColor(.white)
                        .font(Font.montserratBold(size: 17))
                    Spacer()
                    Image("qibla")
                        .resizable()
                        .frame(width: 32,height: 32)
                }
                .padding(.horizontal,15)
                
                VStack {
                    HStack(spacing:12) {
                        Text("Fajr")
                            .foregroundStyle(Color.white)
                            .font(Font.montserratBold(size: 30))
                        Text("05:45")
                            .foregroundColor(.white)
                            .font(Font.montserratSemiBold(size: 22))
                    }
                    Text("+00:30:00")
                        .foregroundColor(.white)
                        .font(Font.montserratMedium(size: 22))
                    Text("4 Rabi' al-awwal, 1443")
                        .foregroundColor(.white)
                        .font(Font.montserratMedium(size: 16))
                        .padding(.top,10)
                    Text("October 11, 2021")
                        .foregroundColor(.white)
                        .font(Font.montserratMedium(size: 14))
                    
                }
            }
        }
        .frame(width: .infinity,height: 260)
    }
}

#Preview {
    HomePayView()
}
