//
//  CategoryRow.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

// Creating a CategoryRow with Name and Items
struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        Text("Hello, World!")
    }
}

// Previewing the Row
struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(3))
        )
    }
}
