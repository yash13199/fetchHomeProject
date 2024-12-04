//
//  functions.swift
//  fetchHomeProject
//
//  Created by Sohagia Yash on 12/3/24.
//

import Foundation
import UIKit


func loadImage(from url: String, completion: @escaping (UIImage?) -> Void) {
    guard let imageURL = URL(string: url) else {
        completion(nil)
        return
    }
        DispatchQueue.global().async {
        do {
            let data = try Data(contentsOf: imageURL)
            let image = UIImage(data: data)
                        DispatchQueue.main.async {
                completion(image)
            }
        } catch {
            print("Error loading image: \(error.localizedDescription)")
            DispatchQueue.main.async {
                completion(nil)
            }
        }
    }
}
