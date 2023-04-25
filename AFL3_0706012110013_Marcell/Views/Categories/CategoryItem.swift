//
//  CategoryItem.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

// Holds Landmark as a struct containing all the details.
struct CategoryItem: View {
    var landmark: Landmark

    // Displaying Name and Modded Imaged
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

// temporarily displaying information
struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
