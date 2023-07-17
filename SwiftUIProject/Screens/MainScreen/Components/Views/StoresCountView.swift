//
//  StoresCount.swift
//  SwiftUIProject
//
//  Created by imran on 10.07.2023.
//

import SwiftUI

struct StoresCountView: View{
    
    var body: some View{
        CustomText(text: "56 stores open",
                   fontName: "Poppnis-Rugular",
                   textColor: .black,
                   size: 24)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top,18)
        .padding(.bottom,18)
        .padding(.leading, 15)
    }
}
