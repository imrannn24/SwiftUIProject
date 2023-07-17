//
//  ProductView.swift
//  SwiftUIProject
//
//  Created by imran on 10.07.2023.
//

import SwiftUI
import Kingfisher

struct FoodView: View {
    var image: KFImage
    var title: String
    var description: String
    var rating: Double
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            
            CustomText(text: title,
                       fontName: "Poppins-Regular",
                       textColor: .black,
                       size: 16)
            
            CustomText(text: description,
                       fontName: "Poppins-Regular",
                       textColor: .gray,
                       size: 10)
            .lineLimit(2)
            .padding(.horizontal,5)

            .multilineTextAlignment(.center)
            
            HStack{
                CustomText(text: "\(rating)",
                           fontName: "Poppins-Regular",
                           textColor: .black,
                           size: 14)
                
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 14, height: 14)
                    .foregroundColor(.black)
            }
            
        }
        .frame(width: 180, height: 270)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color(.black).opacity(0.4), radius: 5)
        .padding(.top, 20)
        .padding(.bottom,15)
        .padding(.horizontal, 15)
    }
}
