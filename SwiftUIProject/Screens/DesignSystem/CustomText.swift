//
//  CustomText.swift
//  SwiftUIProject
//
//  Created by imran on 06.07.2023.
//

import SwiftUI

struct CustomText: View{
    
    var text: String
    var fontName: String
    var textColor: Color
    var size: CGFloat
    
    var body: some View{
        
        Text(text)
            .font(.custom(fontName, size: size))
            .foregroundColor(textColor)
        
    }
}
