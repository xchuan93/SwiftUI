//
//  CarouselView.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/6.
//

import SwiftUI

struct CarouselView: View {
    
    let images = ["image_18", "image_20", "image_23", "image_49"]
    
    @State private var currentIndex: Int = 0
    
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<images.count, id: \.self) { index in
                    GeometryReader { geometry in
                        ZStack {
                            Image(images[index])
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: 156)
                                .clipped()
                                .cornerRadius(12)
                                .tag(index)
                            
                            VStack {
                                Spacer()
                                HStack(spacing: 8) {
                                    ForEach(0..<images.count, id: \.self) { index in
                                        Circle()
                                            .fill(index == currentIndex ? Color.blue : Color.gray)
                                            .frame(width: 8, height: 8)
                                    }
                                }
                                .padding(.bottom, 8)
                            }
                        }
                    }
                    .frame(height: 156)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .onReceive(timer) { _ in
                withAnimation {
                    currentIndex = (currentIndex + 1) % images.count
                }
            }
        }
        .padding()
    }
}

#Preview {
    CarouselView()
}





