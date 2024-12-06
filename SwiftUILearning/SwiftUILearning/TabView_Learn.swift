//
//  TabView_Learn.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/5.
//

import SwiftUI

struct TabView_Learn: View {
    
    @State var selectIndex = 0;
    
    var body: some View {
        TabView(selection: $selectIndex) {
            Text
        }
    }
}

#Preview {
    TabView_Learn()
}
