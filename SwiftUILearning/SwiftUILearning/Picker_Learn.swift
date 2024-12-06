//
//  Picker_Learn.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/5.
//

import SwiftUI

struct Picker_Learn: View {
    
    @State var leftSelect = 0
    @State var rightSelect = 0
    let leftSources = (0..<10).map { "index:\($0)" }
    let rightSources = (10..<20).map{ String($0,radix: $0).uppercased() }
    
    var body: some View {
        HStack {
            VStack {
                Picker(selection: $leftSelect, label: Text("Left1")) {
                    ForEach(0..<leftSources.count) {
                        Text(leftSources[$0]).tag($0)
                            .foregroundStyle(LinearGradient(colors: [.red,.orange], startPoint: .leading, endPoint: .trailing))
                    }
                }
                .frame(width: Constants.screenWidth / 2.0 - 20)
                .pickerStyle(.wheel)

            }
            
            
            VStack {
                Picker(selection: $rightSelect, label: Text("Right")) {
                    ForEach(0..<rightSources.count) {
                        Text(rightSources[$0]).tag($0)
                    }
                }
                .frame(width: Constants.screenWidth / 2.0 - 20)
                .pickerStyle(.wheel)
            }
        }
        .padding([.leading,.trailing],20)
    }
}

#Preview {
    Picker_Learn()
}
