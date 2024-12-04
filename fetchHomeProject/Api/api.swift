//
//  api.swift
//  fetchHomeProject
//
//  Created by Sohagia Yash on 12/3/24.
//

import UIKit





import Foundation

protocol ApiProtocol {
    func getData<T: Decodable>(from url: String, completion: @escaping (Result<T, Error>) -> Void)
}

class Api: @unchecked Sendable, ApiProtocol {
    static let apiInstance = Api()
    private init() {}
    
    func getData<T: Decodable>(from url: String, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: url) else {
            print("Invaild URL")
            return
        }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data else {
                print("No Data Found")
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                print(error)
            }
        }.resume()
    }
}


