//
//  Restaurant.swift
//  DishOrder
//
//  Created by Ludovic Ollagnier on 12/11/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var address: String
    var menu: [Dish]

    init(name: String, address: String, menu: [Dish] = []) {
        self.name = name
        self.address = address
        self.menu = menu
    }
}
