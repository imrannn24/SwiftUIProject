//
//  TabBarView.swift
//  SwiftUIProject
//
//  Created by imran on 17.07.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
    
        let imageName: [String] = ["house", "wallet.pass", "text.bubble", "person"]
    
        HStack {
            ForEach(imageName, id: \.self) { index in
                CustomButtonWithImage(image: Image(systemName: index), imageColor: .white, imageWidth: 25, imageHeight: 25, title: "", backgroundColor: .black, backgroundWidth: 60, backgroundHeight: 60, isSelect: true) {
                    //
                }
            }
            .padding(5)
        }
        .padding(5)
        .padding(.horizontal,25)
        .background(.black)
        .clipShape(Capsule())
        .frame(maxHeight: .infinity, alignment: .bottom)
        .padding(.bottom,-10)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
