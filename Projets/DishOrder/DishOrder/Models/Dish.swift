//
//  Dish.swift
//  DishOrder
//
//  Created by Ludovic Ollagnier on 12/11/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import Foundation

struct Dish {

    let type: String
    
    let name: String
    var price: Float
    var dishDescription: String
    var pictureURL: String

    var allergens: [String]?
    var calories: Int?
}
