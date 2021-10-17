//
//  ViewRouter.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/26/21.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    
    var cookBook = Cookbook()
    var currentRecipePage = 0
    
    @Published var currentPage: RecipePageView
    
    init() {
        let allRecipeNames = cookBook.recipes.map { recipe in recipe.name}.joined(separator: "\n")
        self.currentPage = RecipePageView(title: "All Recipes", contentBody: allRecipeNames, recipe: Recipe(name: "Test", ingredients: [], steps: [""]))
    }
    
    func nextRecipe() -> RecipePageView {
        if (currentRecipePage >= cookBook.recipes.count-1) {
            currentRecipePage = 0
        }
        let recipePV = RecipePageView(title: cookBook.recipes[currentRecipePage].name,
                                      contentBody: cookBook.recipes[currentRecipePage].ingredients.joined(separator: ", "),
                                      recipe: cookBook.recipes[currentRecipePage])
        currentRecipePage += 1
        return recipePV

    }
    
}
