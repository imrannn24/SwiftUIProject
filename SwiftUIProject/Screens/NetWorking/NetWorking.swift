//
//  NetWorking.swift
//  SwiftUIProject
//
//  Created by imran on 10.07.2023.
//

import SwiftUI

enum RequestType{
    case get
    case post(name: String)
}

enum DataType{
    case model(ProductsModel)
    case statusCode(Int)
}

struct NetWorking{
    
    static let shared = NetWorking()
    
    func universalRequest(type: RequestType, completition: @escaping (Result<DataType,Error>) -> Void) {
        switch type {
        case .get:
            guard let url = URL(string: "https://dummyjson.com/products") else {return}
            
            let request = URLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                
                guard let data = data else {return}
                
                do {
                    let model = try JSONDecoder().decode(ProductsModel.self, from: data)
                    completition(.success(.model(model)))
                } catch {
                    completition(.failure(error))
                }
            }
            task.resume()
            
        case .post(let name):
            guard let url = URL(string: "https://dummyjson.com/products/add") else {return}
            
            var request = URLRequest(url: url)
            
            request.httpMethod = "POST"
            
            let product = [Product(id: 0, title: name, description: "", price: 0, discountPercentage: 0, rating: 0, stock: 0, brand: "", category: "", thumbnail: "", images: .init())]
            
            request.httpBody = try? JSONEncoder().encode(product)
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let response = response as? HTTPURLResponse else {return}
                
                do{
                    completition(.success(.statusCode(response.statusCode)))
                } catch {
                    completition(.failure(error))
                }
            }
            task.resume()
        }
    }
}
