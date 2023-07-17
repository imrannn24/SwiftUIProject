//
//  DeliveryLocationView.swift
//  SwiftUIProject
//
//  Created by imran on 14.07.2023.
//

import SwiftUI

struct DeliveryLocationScreen: View {
    var body: some View {
        VStack{
            CustomText(text: "Choose delivery location",
                       fontName: "Poppins-SemiBold",
                       textColor: .black,
                       size: 22)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 15)
            .padding(.top,20)
        
            AddressView(image: "location.circle.fill",
                        nameOfLocation: "Deliver to current location",
                        locationAddress: "Manas ave")
            
            AddressView(image: "location.circle",
                        nameOfLocation: "Deliver to different location",
                        locationAddress: "Choose location on the map")
            
            CustomText(text: "Choose delivery location",
                       fontName: "Poppins-SemiBold",
                       textColor: .black,
                       size: 22)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 15)
            .padding(.top,10)
            
            AddressView(image: "house",
                        nameOfLocation: "Home",
                        locationAddress: "Jukeev-Pudovkin St 43, apt #12")
            
            AddressView(image: "briefcase.fill",
                        nameOfLocation: "Work",
                        locationAddress: "Manas Ave 32, floor 7, office #703")
            
            AddressView(image: "building.2.fill",
                        nameOfLocation: "Hotel",
                        locationAddress: "Frunze St 50, floor 10, room #1011 ")
            
            Spacer()
            
            
        }
    }
}

struct DeliveryLocationScreen_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryLocationScreen()
    }
}
