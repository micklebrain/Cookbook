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
    var homePageView: tableOfContentsPageView
    var currentRecipePage = 0
    @Published var homePage : Bool = true
        
//  @Published var currentPage: RecipePageView
//  @Published var currentPage: tableOfContentsPageView
    @Published var currentPage: RecipePageView
    
    init() {
        
        let elotaRecipe = Recipe(name: "Elota", ingredients: ["Corn", "Red Chilli flakes"], recipeSteps: [])
        
        let sundubuJjigae = Recipe(name: "Sundubu Jjigae (Spicy Soft Tofu Stew)",
                              ingredients: ["bok choy",
                                            "broth",
                                            "egg",
                                            "green onion",
                                            "minced garlic",
                                            "ground pork",
                                            "mushrooms",
                                            "red chili flakes",
                                            "shrimp",
                                            "spring onion",
                                            "soft tofu",
                                            "soy sauce",
                                            "seasame oil",
                                            "vegetable & seasame oil",
                                            "white onion"],
                                                              
                                recipeSteps: [
                                             recipeStep(title: "Make the paste.", imageTitle: ""),
                                             recipeStep(title: "Add cooking oil to the pan.", imageTitle: "cooking-oil"),
                                             recipeStep(title: "Add seasame oil to the pan.", imageTitle: "seasame-oil"),
                                             recipeStep(title: "Stir fry green onion.", imageTitle: "scallions"),
                                             recipeStep(title: "Add ground pork to the pan.", imageTitle: "ground-pork"),
                                             recipeStep(title: "Add chopped white onions to the pan.", imageTitle: "white-onions"),
                                             recipeStep(title: "Add minced garlic to the pan.", imageTitle: "minced-garlic"),
                                             recipeStep(title: "Add salt to the pan.", imageTitle: "salt"),
                                             recipeStep(title: "Add red chili powder the pan.", imageTitle: "red-chili-powder"),
                                             recipeStep(title: "Add sugar to the pan.", imageTitle: "brown-sugar"),
                                             recipeStep(title: "Add soy sauce to the pan.", imageTitle: "soy-sauce"),
                                                                                                                
                                             recipeStep(title: "Add broth or water into earthen pot."),
                                             recipeStep(title: "Add paste into earthen pot."),
                                             recipeStep(title: "Add soft tofu into earthen pot."),
                                             recipeStep(title: "Crack egg into earthen pot."),
                                             recipeStep(title: "Add pepper into earthen pot."),
                                             recipeStep(title: "Sprinkle cheongyang pepper into earthen pot."),
                                             recipeStep(title: "Sprinkle chopped scallion into earthen pot.")
                                            ])
        
        cookBook.addRecipe(recipe: elotaRecipe)
        cookBook.addRecipe(recipe: sundubuJjigae)
        
        let allRecipeNames = cookBook.recipes.map { recipe in recipe.name }.joined(separator: "\n")
        
        self.currentPage = RecipePageView(title: "All Recipes",
                                          contentBody: allRecipeNames,
                                          recipe: Recipe(name: "Test",                                                                            ingredients: [],
                                                         recipeSteps: []))
        self.homePageView = tableOfContentsPageView()
            
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
        
        homePage = false

        return recipePV
    }
    
    func nextRecipe() -> RecipePageView {
        if (currentRecipePage >= cookBook.recipes.count-1) {
            homePage = true
            currentRecipePage = 0            
        } else {
            currentRecipePage += 1
        }
        
        let recipePV = RecipePageView(title: cookBook.recipes[currentRecipePage].name,
                                      contentBody: cookBook.recipes[currentRecipePage].ingredients.joined(separator: ", "),
                                      recipe: cookBook.recipes[currentRecipePage])
        
        homePage = false
        return recipePV
    }
    
}
