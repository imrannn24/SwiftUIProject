//
//  AddressView.swift
//  SwiftUIProject
//
//  Created by imran on 14.07.2023.
//

import SwiftUI

struct AddressView: View {
    
    var image: String
    var nameOfLocation: String
    var locationAddress: String
    
    var body: some View {
        HStack{
            Button {
                //
            } label: {
                Image(systemName: image )
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(5)
                    .foregroundColor(.gray)
                VStack{
                    CustomText(text: nameOfLocation,
                               fontName: "Poppins-Regular",
                               textColor: .black,
                               size: 18)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    CustomText(text: locationAddress,
                               fontName: "Poppins-Regular",
                               textColor: .gray,
                               size: 14)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding(.horizontal,25)
        }
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(image: "location.circle.fill", nameOfLocation: "Deliver to current location", locationAddress: "Manas ave")
    }
}
