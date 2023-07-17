//
//  SliderCategoriesView.swift
//  SwiftUIProject
//
//  Created by imran on 10.07.2023.
//

import SwiftUI

struct SliderCategoriesView: View{
    
    @Binding var isSelect: Int
    
    var body: some View{
    
        let categoryBtns: [CategoryModel] = [
            CategoryModel(id: 0, title: "Delivery", image: "Delivery"),
            CategoryModel(id: 1, title: "TakeAway", image: "TakeAway"),
            CategoryModel(id: 2, title: "Catering", image: "Catering"),
            CategoryModel(id: 3, title: "Curbside", image: "Curbside"),
            CategoryModel(id: 4, title: " Offers ", image: "Offers")]
        
        HStack{
            ForEach(categoryBtns, id: \.self) { category in
                CustomButtonWithImage(image: Image(category.image), imageColor: .white, imageWidth: 30, imageHeight: 30, title: (isSelect == category.id) ? category.title : "", backgroundColor: .white, backgroundWidth: 50, backgroundHeight: 50, isSelect: isSelect == category.id ) {
                    isSelect = category.id
                    
                }
            }
        }
        .padding(.top, 10)
        .padding(.horizontal,10)
    }
}
