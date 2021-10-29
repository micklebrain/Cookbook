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
    
//    @Published var currentPage: tableOfContentsPageView
    @Published var currentPage: RecipePageView
    
    init() {
        let allRecipeNames = cookBook.recipes.map { recipe in recipe.name }.joined(separator: "\n")
        self.currentPage = RecipePageView(title: "All Recipes",
                                          contentBody: allRecipeNames,
                                          recipe: Recipe(name: "Test",                                                                   ingredients: [],
                                                         recipeSteps: []))
//          self.currentPage = tableOfContentsPageView(recipes: [""])
    }
    
    func selectRecipe(recipeName: String) -> RecipePageView {
        
//        for i in (0..cookBook.recipes.count) {
//            if recipe.name == recipeName {
//
//            }
//        }
//
        let recipePV = RecipePageView(title: cookBook.recipes[currentRecipePage].name,
                                      contentBody: cookBook.recipes[currentRecipePage].ingredients.joined(separator: ", "),
                                      recipe: cookBook.recipes[currentRecipePage])

        return recipePV
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
