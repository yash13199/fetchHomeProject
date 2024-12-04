//
//  foodModel.swift
//  fetchHomeProject
//
//  Created by Sohagia Yash on 12/3/24.
//

import Foundation

// MARK: - RecipesModel
struct RecipesModel : Codable {
    let recipes: [Recipe]
}

struct Recipe : Codable{
    let cuisine, name: String?
    let photo_url_large, photo_url_small: String?
    let source_url: String?
    let uuid: String?
    let youtube_url: String?
}
