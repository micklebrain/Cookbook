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
    var recipeSteps: [RecipeStep]
    var spices: [String]
    var vegetables: [String]
    var cuisine = ""
    var coverImage: String
    
    init(name: String,
         ingredients: [String],
         recipeSteps: [RecipeStep],
         spices: [String] = [""],
         vegetables: [String] = [""],
         coverImage: String) {
        self.name = name
        self.ingredients = ingredients
        self.recipeSteps = recipeSteps
        self.spices = spices
        self.vegetables = vegetables
        self.coverImage = coverImage
    }
    
    func addRecipeStep(step: RecipeStep) {
        recipeSteps.append(step)
    }
}

class RecipeStep {
    var title: String
    var imageTitle: String
    @State var imageData: Data? = nil
    
    init(title: String, imageTitle: String = "") {
        self.title = title
        self.imageTitle = imageTitle
    }
}

