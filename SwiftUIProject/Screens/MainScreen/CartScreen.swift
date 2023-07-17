//
//  CartScreen.swift
//  SwiftUIProject
//
//  Created by imran on 17.07.2023.
//

import SwiftUI

struct CartScreen: View {
    var body: some View {
        VStack{
            CustomText(text: "Cart",
                       fontName: "Poppins-SemiBold",
                       textColor: .black,
                       size: 40)
            Spacer()
        }
    }
}

struct CartScreen_Previews: PreviewProvider {
    static var previews: some View {
        CartScreen()
    }
}
