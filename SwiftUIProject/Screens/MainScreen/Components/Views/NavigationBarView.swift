//
//  NavigationBarView.swift
//  SwiftUIProject
//
//  Created by imran on 06.07.2023.
//

import SwiftUI

struct NavigationBarView: View{
    
    var body: some View{
        
        HStack{
            CustomButtonWithImage(image: Image("Menu"), imageColor: .black, imageWidth: 50, imageHeight: 25, title: "", backgroundColor: Color(CustomColor.backColor), backgroundWidth: 50, backgroundHeight: 50, isSelect: false) {
                //
            }
            
            Spacer()
            
            DropDownBtnView()
            
            Spacer()
            
            NavigationLink{
                CartScreen()
            }label: {
                HStack{
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: 25, maxHeight: 25, alignment: .center)
                        .foregroundColor(.white)
                    
                }
                .frame(width: 50, height: 50)
                .background(.black)
                .cornerRadius(16)
            }
        }
        .padding(.horizontal, 15)
    }
}
