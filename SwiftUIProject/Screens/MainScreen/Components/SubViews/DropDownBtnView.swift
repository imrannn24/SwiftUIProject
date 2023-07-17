//
//  File.swift
//  SwiftUIProject
//
//  Created by imran on 06.07.2023.
//

import SwiftUI

struct DropDownBtnView: View{

    var body: some View {
        NavigationLink{
            DeliveryLocationScreen()
        } label: {
            VStack {
                CustomText(text: "Delivering to",
                           fontName: "Poppins-Regular",
                           textColor: .gray,
                           size: 12)
                HStack{
                    CustomText(text: "Manas Ave",
                               fontName: "Poppins-Regular",
                               textColor: .black,
                               size: 16)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
                }
            }
        }
    }
}
    
