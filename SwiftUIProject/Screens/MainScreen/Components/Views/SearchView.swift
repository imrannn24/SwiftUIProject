//
//  SearchView.swift
//  SwiftUIProject
//
//  Created by imran on 10.07.2023.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var textFromTF: String
    @Binding var showingAlert: Bool
    @State var code: String
    
    var body: some View {
        HStack {
            HStack {
                
                Image(systemName: "magnifyingglass")
                    .frame(width: 15, height: 10)
                    .padding(.trailing,5)
                    .foregroundColor(.gray)
                
                TextField("Find restaurant by name ", text: $textFromTF)
                    .font(.custom("Poppins-Regular", size: 16))
            }
            .frame(width: 265, height: 35)
            .padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.3), radius: 5)
            
            Spacer()
            
            CustomButtonWithImage(image: Image(systemName: "slider.horizontal.3") , imageColor: .black, imageWidth: 30, imageHeight: 25, title: "", backgroundColor: Color(CustomColor.backColor), backgroundWidth: 50, backgroundHeight: 50, isSelect: false) {
                if textFromTF.isEmpty{
                    showingAlert = true
                    code = "Error"
                }else{
                    NetWorking.shared.universalRequest(type: .post(name: textFromTF ?? "")) { result in
                        switch result {
                        case .success(let statusCode):
                            DispatchQueue.main.async {
                                showingAlert = true
                                code = "\(statusCode)"
                            }

                        case .failure(let failure):
                            print(failure.localizedDescription)
                        }
                    }
                }
            }
            .alert("Status Code\n \(code)", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .padding(.horizontal)
    }
}
