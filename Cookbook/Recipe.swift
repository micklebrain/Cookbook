//
//  Recipe.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/8/21.
//

import Foundation
import SwiftUI

class Recipe {
    var name: String
    var ingredients: [String]
    var preparation_steps = [""]
    var recipeSteps: [recipeStep]
    var spices: [String]
    var vegetables: [String]
    var cuisine = ""
    
    init(name: String, ingredients: [String], recipeSteps: [recipeStep], spices: [String] = [""], vegetables: [String] = [""]) {
        self.name = name
        self.ingredients = ingredients
        self.recipeSteps = recipeSteps
        self.spices = spices
        self.vegetables = vegetables
    }
}

class recipeStep {
    var title: String
    var imageTitle: String
    init(title: String, imageTitle: String = "") {
        self.title = title
        self.imageTitle = imageTitle
    }
}

