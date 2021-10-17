//
//  Recipe.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/8/21.
//

import Foundation

class Recipe {
    var name: String
    var ingredients = [""]
    
    var all_ingredients: Ingredients = Ingredients(produce: [""], sauces: [""], spices: [""])
    
    var preparation_steps = [""]
    
    var steps = [""]
    var spices = [""]
    
    init(name: String, ingredients: [String], steps: [String]) {
        self.name = name
        self.ingredients = ingredients
        self.steps = steps
    }
}

