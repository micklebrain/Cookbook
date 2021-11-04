//
//  CookbookApp.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/3/21.
//

import SwiftUI

@main
struct CookbookApp: App {
    
    @StateObject var cookbook = Cookbook(recipes: [
        Recipe(name: "Chicken Tikka Masala (butter chicken)",
                                        ingredients: ["2 lbs of chicken breasts",
                                                      "1 cup of cream",
                                                      "6 tbsp of butter",
                                                      "125 grams of yogurt"],
                                        recipeSteps: [
                                            recipeStep(title: "Chop Chicken Breasts", imageTitle: "chopped-chicken-breasts"),
                                            recipeStep(title: "Add yourt", imageTitle: "yogurt"),
                                            recipeStep(title: "Add lemon", imageTitle: "lemon"),
                                            recipeStep(title: "Add garlic", imageTitle: "garlic"),
                                            recipeStep(title: "Add ginger", imageTitle: "ginger"),
                                            recipeStep(title: "Add salt", imageTitle: "salt"),
                                            recipeStep(title: "Add cumin", imageTitle: "cumin"),
                                            recipeStep(title: "Add garam masala", imageTitle: "garam masala"),
                                            recipeStep(title: "Add paprika", imageTitle: "paprika"),
                                            recipeStep(title: "Marinate 1 hour", imageTitle: "marinate 1 hour"),
                                            recipeStep(title: "Bake 15 minutes", imageTitle: "bake 15 minutes"),
                                            recipeStep(title: "Add oil", imageTitle: "oil"),
                                            recipeStep(title: "Add onions", imageTitle: "onion"),
                                            recipeStep(title: "Add garlic", imageTitle: "add-garlic"),
                                            recipeStep(title: "Add ginger", imageTitle: "add-ginger"),
                                            recipeStep(title: "Add cumin", imageTitle: "add-cumin"),
                                            recipeStep(title: "Add tumeric", imageTitle: "tumeric"),
                                            recipeStep(title: "Add coriander", imageTitle: "coriander"),
                                            recipeStep(title: "Add chili powder", imageTitle: "chili powder"),
                                            recipeStep(title: "Add paprika", imageTitle: "paprika"),
                                            recipeStep(title: "Add garam masala", imageTitle: "add garam masala"),
                                            recipeStep(title: "Mix up", imageTitle: "mix-up"),
                                            recipeStep(title: "Mix in tomato puree", imageTitle: "tomato puree"),
                                            recipeStep(title: "Mix in tomato sauce", imageTitle: "tomato sauce"),
                                            recipeStep(title: "Add water", imageTitle: "water"),
                                            recipeStep(title: "Mix in cream", imageTitle: "cream"),
                                            recipeStep(title: "Stir in chicken", imageTitle: "stir in chicken")],
                                        
                                        spices: ["1 tsp of " + Spices.cayennePepper.rawValue,
                                                 Spices.chiliPowder.rawValue,
                                                 Spices.coriander.rawValue,
                                                 Spices.cumin.rawValue,
                                                 "3 tsp of " + Spices.garamMasala.rawValue,
                                                 Spices.paprika.rawValue,
                                                 Spices.pepper.rawValue,
                                                 Spices.salt.rawValue,
                                                 "1/2 tsp of " + Spices.tumeric.rawValue],
        
                                        vegetables: ["Cilantro",
                                                     "3 " + Vegetables.garlic.rawValue + " cloves minced",
                                                     "1 Tbsp. of grated " + Vegetables.ginger.rawValue,
                                                     Vegetables.lemon.rawValue,
                                                     "14 oz of tomato sauce",
                                                     "tomato puree",
                                                     "1 1/2 cups of yellow onion diced"]),
        
        Recipe(name: "Sundubu Jjigae (Spicy Soft Tofu Stew)",
                                   ingredients: ["broth",
                                            "egg",
                                            "ground pork",
                                            "minced garlic",
                                            "seasame oil",
                                            "shrimp",
                                            "soft tofu",
                                            "soy sauce",
                                            "vegetable oil"],
                                   recipeSteps: [
                                             recipeStep(title: "Make the paste."),
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
                                            ],
                                spices: ["red chili flakes",
                                         "cheongyang pepper"],
                                   vegetables: [Vegetables.bokChoy.rawValue,
                                             "green onions",
                                             "mushrooms",
                                             "spring onion",
                                             "white onion"])
        ])
    

//    
//    addRecipe(recipe: Recipe(name: "Baked Salmon",
//                               ingredients: ["Salmon",
//                                             Spices.pepper.rawValue,
//                                             Spices.salt.rawValue,],
//                               recipeSteps: []))
//    
//    addRecipe(recipe: Recipe(name: "Steak and Potatoes",
//                                       ingredients: ["Steak",
//                                                     "Potatoes",
//                                                     Spices.pepper.rawValue,
//                                                     Spices.salt.rawValue,],
//                                       recipeSteps: []))
//    
//    addRecipe(recipe: Recipe(name: "Brocolli Cheddar Soup",
//                                      ingredients: ["Broccoli florets",
//                                                    "Chicken Stock",
//                                                    "Heavy creamy"],
//                                      recipeSteps: []))
//    
//    addRecipe(recipe: Recipe(name: "Banh Xeo",
//                                      ingredients: ["Shrimp",
//                                                    "Cocunut cream",
//                                                    "Green onion",
//                                                    "Pork belly",
//                                                    "Onion",
//                                                    "bean sprouts",
//                                                    "Dry mung beans",
//                                                    "Mustard greens",
//                                                    "Mint",
//                                                    "Cilantro",
//                                                    "Vietnamese perilla"],
//                                      recipeSteps: []))
//    
//    addRecipe(recipe: Recipe(name: "Ramen",
//                                      ingredients: [],
//                                      recipeSteps: []))
    
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {            
            MotherView().environmentObject(viewRouter).environmentObject(cookbook)
        }
    }
}
