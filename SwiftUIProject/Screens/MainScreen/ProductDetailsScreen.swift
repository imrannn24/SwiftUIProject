//
//  ProductDetailsScreen.swift
//  SwiftUIProject
//
//  Created by imran on 10.07.2023.
//

import SwiftUI
import Kingfisher

struct ProductDetailsScreen: View {
    
    var product: Product
    
    var body: some View {
        
        VStack{
            
            CustomText(text: product.title ?? "", fontName: "Poppins-SemiBold", textColor: .black, size: 34)
            
            getImage(url: product.thumbnail ?? "")
                .resizable()
                .frame(width: 270, height: 270)
                .cornerRadius(24)
            
            CustomText(text: product.description ?? "", fontName: "Poppins-Regular", textColor: .black, size: 20)
                .padding(.horizontal,30)
                .padding(.top, 30)
            
            HStack{
                
                CustomText(text: "\(product.price ?? 0)$", fontName: "Poppins-SemiBold", textColor: Color(CustomColor.priceColor), size: 28)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                
                CustomText(text: "\(product.rating ?? 0)", fontName: "Poppins-SemiBold", textColor: .yellow, size: 28)
                    
                
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .frame(maxWidth: 30 , alignment: .trailing)
                    .foregroundColor(.yellow)
                    .padding(.trailing, 30)
            }
            Spacer()
        }
    }
}

private func getImage(url: String) -> KFImage {
    let urlImage = URL(string: url)
    let kfImage = KFImage(urlImage)
    return kfImage
}


struct ProductDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsScreen(product: .init(id: 0, title: "", description: "", price: 0, discountPercentage: 0, rating: 0, stock: 0, brand: "", category: "", thumbnail: "", images: [""]))
    }
}
