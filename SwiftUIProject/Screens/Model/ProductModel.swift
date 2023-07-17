//
//  ProductModel.swift
//  SwiftUIProject
//
//  Created by imran on 10.07.2023.
//

import SwiftUI
import UIKit

struct ProductsModel: Codable {
    let products: [Product]?
    let total, skip, limit: Int?
}
 
struct Product: Codable, Hashable {
    let id: Int?
    let title, description: String?
    let price: Int?
    let discountPercentage, rating: Double?
    let stock: Int?
    let brand, category: String?
    let thumbnail: String?
    let images: [String]?
}
