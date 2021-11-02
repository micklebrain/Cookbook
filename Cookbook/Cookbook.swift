//
//  Cookbook.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/5/21.
//

import Foundation
import SwiftUI

class Cookbook {
    var recipes: [Recipe]  = []
    
    init() {
        self.addRecipes()
    }
    
    func addRecipe(recipe: Recipe) {
        
        self.recipes.append(recipe)
        
    }
    
    func addRecipes() {
                
        let bakedSalmonRecipe = Recipe(name: "Baked Salmon",
                                       ingredients: ["Salmon", "Salt", "Pepper"],
//                                       steps: ["1. Add Salt and pepper", "2. Grill Salmon"],
                                       recipeSteps: [])
        
        let steakAndPotatoesRecipe = Recipe(name: "Steak and Potatoes",
                                            ingredients: ["Steak",
                                                          "Potatoes",
                                                          "Salt",
                                                          "Pepper"],
                                            recipeSteps: [])
        
        let chickenTikkaMasala = Recipe(name: "Chicken Tikka Masala",
                                        ingredients: ["2 lbs of chicken breast",
                                                      "14 oz of tomato sauce",
                                                      "1 cup of cream",
                                                      "1 1/2 cups of yellow onion, diced",
                                                      "chopped cilantro for garnish",
                                                      "3 garlic cloves, minced",
                                                      "6 tbsp of butter divided into 2 tbsp chunks",
                                                      "1 Tbsp. of grated ginger",
                                                      "yogurt",
                                                      "tomato puree",
                                                      "lemon"],
                                        recipeSteps: [],
                                        spices: ["1 tsp of cayenne pepper", "chili powder", "coriander", "cumin", "3 tsp of garam masala", "paprika", "pepper", "salt", "1/2 tsp of ground turmeric"])
                
        let brocolliCheddarSoup = Recipe(name: "Brocolli Cheddar Soup",
                                         ingredients: ["Broccoli florets", "Chicken Stock", "Heavy creamy"],
                                         recipeSteps: [])
        
        let banhXeo = Recipe(name: "Banh Xeo",
                             ingredients: ["Shrimp", "Cocunut cream", "Green onion", "Pork belly", "Onion", "bean sprouts", "Dry mung beans", "Mustard greens", "Mint", "Cilantro", "Vietnamese perilla"],
                             recipeSteps: [])
        
        let ramen = Recipe(name: "Ramen",
                          ingredients: [],
                          recipeSteps: [])
        
        self.recipes = [chickenTikkaMasala, steakAndPotatoesRecipe, bakedSalmonRecipe, brocolliCheddarSoup, banhXeo, ramen]
        
    }
}
