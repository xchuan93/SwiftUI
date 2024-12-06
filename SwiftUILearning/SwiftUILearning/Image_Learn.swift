//
//  Image_Learn.swift
//  SwiftUILearning
//
//  Created by mac on 2024/12/5.
//

import SwiftUI

struct Image_Learn: View {
    
    let placeholdImage = UIImage(named: "image_49")
    
    @State private var items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        Image("image_49")
            .resizable()
            .frame(width: Constants.screenWidth)
            .ignoresSafeArea(edges:.top)
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
            .onDelete(perform: delete)
        }
        .navigationBarItems(trailing: EditButton())
        
    }
    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

#Preview {
    Image_Learn()
}
