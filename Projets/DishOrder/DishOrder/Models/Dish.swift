//
//  Dish.swift
//  DishOrder
//
//  Created by Ludovic Ollagnier on 12/11/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import Foundation

// Raw Values : Int / Double / Float / String / Character
enum DishType: Int {
    case first
    case main
    case desert
    case drink

    // Can have functions
    // Can have computed properties
    // Can have custom init
    // Can have associated values
}

enum Allergen {
    case milk, gluten
}

struct Dish {

    let type: DishType
    
    let name: String
    var price: Float
    var dishDescription: String
    var pictureURL: String

    var allergens: [Allergen]?
    var calories: Int?

    init(type: DishType, name: String, price: Float, description: String, imageURL: String, allergens: [Allergen]? = nil, calories: Int? = nil) {

        self.type = type
        self.name = name
        self.price = price
        dishDescription = description
        pictureURL = imageURL
        self.allergens = allergens
        self.calories = calories
    }
}
