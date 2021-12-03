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
    var produceAndDairy: [String]
    var name: String
    var recipeSteps: [RecipeStep]
    var spicesAndHerbs: [String]
    var vegetables: [String]
    
    init(coverImage: String,
         produceAndDairy: [String],
         name: String,
         recipeSteps: [RecipeStep],
         spices: [String] = [""],
         vegetables: [String] = [""]) {
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

