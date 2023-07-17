//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by imran on 06.07.2023.
//

import SwiftUI
import Kingfisher

struct MainScreen: View {
    
    @State var selected: Int = 0
    @State var textFromTF: String = ""
    @State var products: [Product] = []
    @State var showingAlert: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(CustomColor.backColor)
                    .ignoresSafeArea()
                VStack{
                    NavigationBarView()
                    
                    SliderCategoriesView(isSelect: $selected)
                    
                    StoresCountView()
                    
                    SearchView(textFromTF: $textFromTF, showingAlert: $showingAlert, code: "")
                    
                    HStack{
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: -10) {
                                ForEach(products, id: \.self) { index in
                                    NavigationLink {
                                        ProductDetailsScreen(product: index)
                                    } label: {
                                        FoodView(image: getImage(url: index.thumbnail ?? ""),
                                                 title: index.title ?? "",
                                                 description: index.description ?? "", rating: index.rating ?? 0)
                                    }
                                }
                            }
                        }
                    }
                    
                    Spacer()
                }
                .onAppear {
                    NetWorking.shared.universalRequest(type: .get) { result in
                        switch result{
                        case .success(.model(let value)):
                            DispatchQueue.main.async {
                                self.products = value.products ?? []
                            }
                        case .failure(let failure):
                            print(failure.localizedDescription)
                            
                        default: print("success")
                        }
                    }
                }
                    TabBarView()
                }
            }
        }
    }
    
    private func getImage(url: String) -> KFImage {
        let urlImage = URL(string: url)
        let kfImage = KFImage(urlImage)
        return kfImage
    }
    
    struct MainScreen_Previews: PreviewProvider {
        static var previews: some View {
            MainScreen()
        }
    }
