//
//  CustomButtonWithImage.swift
//  SwiftUIProject
//
//  Created by imran on 06.07.2023.
//

import SwiftUI

struct CustomButtonWithImage: View {
    
    var image: Image
    var imageColor: Color
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    var title: String
    var backgroundColor: Color
    var backgroundWidth: CGFloat
    var backgroundHeight: CGFloat
    var isSelect: Bool
    var action: () -> Void
    
    var body: some View {
        VStack {
            Button {
                action()
            } label : {
                    HStack{
                        image
                            .resizable()
                            .frame(width: imageWidth, height: imageHeight)
                            .frame(maxWidth: imageWidth, maxHeight: imageHeight, alignment: .center)
                            .foregroundColor(isSelect ? .white : .black)
                        
                        if title != ""{
                            Text(isSelect ? title : "")
                                .foregroundColor(.white)
                                .font(.custom("Poppins-Regular", size: 16))
                        }
                    }
                    .frame(width: isSelect ? backgroundWidth+CGFloat(title.count*10) : backgroundWidth, height: backgroundHeight)
                    .background(isSelect ? .black : backgroundColor)
                    .cornerRadius(16)
            }
        }
    }
}


