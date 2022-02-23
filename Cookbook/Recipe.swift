//
//  Recipe.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/8/21.
//

import Foundation
import SwiftUI

class Recipe {
    var coverImage: String
    var produceAndDairy: [Ingredient]
    var name: String
    var recipeSteps: [RecipeStep]
    var spicesAndHerbs: [Ingredient]
    var vegetables: [Ingredient]
    
    init(coverImage: String,
         produceAndDairy: [Ingredient],
         name: String,
         recipeSteps: [RecipeStep],
         spices: [Ingredient] = [],
         vegetables: [Ingredient] = []) {
        self.coverImage = coverImage
        self.name = name
        self.produceAndDairy = produceAndDairy
        self.recipeSteps = recipeSteps
        self.spicesAndHerbs = spices
        self.vegetables = vegetables
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

