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
    
    func addRecipes() {
        
        let elotaRecipe = Recipe(name: "Elota", ingredients: ["Corn", "Red Chilli flakes"], recipeSteps: [])
        
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
                                                      "1 cup of heavy creamy",
                                                      "1 1/2 cups of yellow onion, diced",
                                                      "chopped cilantro for garnish",
                                                      "3 garlic cloves, minced",
                                                      "6 tbsp of butter, divided into 2 tbsp chunks",
                                                      "1 tsp of cumin",
                                                      "salt and pepper",
                                                      "1 tsp of chili powder",
                                                      "1/2 tsp of ground turmeric",
                                                      "3 tsp of garam masala",
                                                      "1 tsp of cayenne pepper",
                                                      "1 Tbsp. of grated ginger"],
                                        recipeSteps: [])
        
        let sundubuJjigae = Recipe(name: "Sundubu Jjigae",
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
                              
                                // Use earthen pot
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
        
        let brocolliCheddarSoup = Recipe(name: "Brocolli Cheddar Soup",
                                         ingredients: ["Broccoli florets", "Chicken Stock", "Heavy creamy"],
                                         recipeSteps: [])
        
        let banhXeo = Recipe(name: "Banh Xeo",
                             ingredients: ["Shrimp", "Cocunut cream", "Green onion", "Pork belly", "Onion", "bean sprouts", "Dry mung beans", "Mustard greens", "Mint", "Cilantro", "Vietnamese perilla"],
                             recipeSteps: [])
        
        let ramen = Recipe(name: "Ramen",
                          ingredients: [],
                          recipeSteps: [])
        
        self.recipes = [sundubuJjigae, chickenTikkaMasala, steakAndPotatoesRecipe, bakedSalmonRecipe, elotaRecipe, brocolliCheddarSoup, banhXeo, ramen]
        
    }
}
