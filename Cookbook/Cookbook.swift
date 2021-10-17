//
//  Cookbook.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/5/21.
//

import Foundation

class Cookbook {
    var elotaRecipe = Recipe(name: "Elota", ingredients: ["Corn", "Red Chilli flakes"], steps: [])
    
    var bakedSalmonRecipe = Recipe(name: "Baked Salmon", ingredients: ["Salmon", "Salt", "Pepper"], steps: ["1. Add Salt and pepper", "2. Grill Salmon"])
    
    var steakAndPotatoesRecipe = Recipe(name: "Steak and Potatoes",
                                        ingredients: ["Steak",
                                                      "Potatoes",
                                                      "Salt",
                                                      "Pepper"],
                                        steps: [""])
    
    var chickenTikkaMasala = Recipe(name: "Chicken Tikka Masala",
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
                                    steps: [""])
    
    var Soondubu = Recipe(name: "Soondubu",
                          ingredients: ["bok choy",
                                        "egg",
                                        "minced garlic",
                                        "minced pork",
                                        "mushrooms",
                                        "red chili flakes",
                                        "shrimp",
                                        "spring onion",
                                        "soft tofu",
                                        "soy sauce",
                                        "vegetable & seasame oil",
                                        "white onion"],
                          
                          steps: ["1. chop spring onions",
                                  "2. mince pork",
                                  
                                  "3. add oil",
                                  "4. add (chopped) spring onions",
                                  "5. add (minced) pork",
                                  "6. add (diced) white onions",
                                  "7. add (minced) garlic",
                                  "8. add red chili flakes",
                                  "9. add sugar",
                                  "10. add soy sauce",
                                  
                                  "11. add paste",
                                  "12. add mushrooms",
                                  "13. crack egg in",
                                  "14. add soft tofu",
                                  "15. add bok choy"])
    
    var brocolliCheddarSoup = Recipe(name: "Brocolli Cheddar Soup",
                                     ingredients: ["Broccoli florets", "Chicken Stock", "Heavy creamy"],
                                     steps: [""])
    
    var banhXeo = Recipe(name: "Banh Xeo",
                         ingredients: ["Shrimp", "Cocunut cream", "Green onion", "Pork belly", "Onion", "bean sprouts", "Dry mung beans", "Mustard greens", "Mint", "Cilantro", "Vietnamese perilla"],
                         steps: [""])
    
    var recipes: [Recipe]  = []
    
    init() {
        self.addRecipes()
    }
    
    func addRecipes() {
        self.recipes = [self.Soondubu, self.chickenTikkaMasala, self.steakAndPotatoesRecipe, self.bakedSalmonRecipe, self.elotaRecipe, self.brocolliCheddarSoup, self.banhXeo]
    }
}
