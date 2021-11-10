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
        Recipe(name: "Butter Chicken (Chicken Tikka Masala)",
                                        ingredients: ["2 lbs of chicken breasts",
                                                      "1 cup of cream",
                                                      "6 tbsp of butter",
                                                      "125 grams of yogurt"],
                                        recipeSteps: [
                                            recipeStep(title: "Chop Chicken Breasts", imageTitle: "butter-chicken-step-1"),
                                            recipeStep(title: "Add yourt", imageTitle: "butter-chicken-step-2"),
                                            recipeStep(title: "Add lemon", imageTitle: "butter-chicken-step-3"),
                                            recipeStep(title: "Add garlic", imageTitle: "butter-chicken-step-4"),
                                            recipeStep(title: "Add ginger", imageTitle: "butter-chicken-step-5"),
                                            recipeStep(title: "Add salt", imageTitle: "butter-chicken-step-6"),
                                            recipeStep(title: "Add cumin", imageTitle: "butter-chicken-step-7"),
                                            recipeStep(title: "Add garam masala", imageTitle: "butter-chicken-step-8"),
                                            recipeStep(title: "Add paprika", imageTitle: "butter-chicken-step-9"),
                                            recipeStep(title: "Marinate 1 hour", imageTitle: "butter-chicken-step-10"),
                                            recipeStep(title: "Bake 15 minutes", imageTitle: "butter-chicken-step-11"),
                                            recipeStep(title: "Add oil", imageTitle: "butter-chicken-step-12"),
                                            recipeStep(title: "Add onions", imageTitle: "butter-chicken-step-13"),
                                            recipeStep(title: "Add garlic", imageTitle: "butter-chicken-step-14"),
                                            recipeStep(title: "Add ginger", imageTitle: "butter-chicken-step-15"),
                                            recipeStep(title: "Add cumin", imageTitle: "butter-chicken-step-16"),
                                            recipeStep(title: "Add tumeric", imageTitle: "butter-chicken-step-17"),
                                            recipeStep(title: "Add coriander", imageTitle: "butter-chicken-step-18"),
                                            recipeStep(title: "Add chili powder", imageTitle: "butter-chicken-step-19"),
                                            recipeStep(title: "Add paprika", imageTitle: "butter-chicken-step-20"),
                                            recipeStep(title: "Add garam masala", imageTitle: "butter-chicken-step-21"),
                                            recipeStep(title: "Mix up", imageTitle: "butter-chicken-step-22"),
                                            recipeStep(title: "Mix in tomato puree", imageTitle: "butter-chicken-step-23"),
                                            recipeStep(title: "Mix in tomato sauce", imageTitle: "butter-chicken-step-24"),
                                            recipeStep(title: "Add water", imageTitle: "butter-chicken-step-25"),
                                            recipeStep(title: "Mix in cream", imageTitle: "butter-chicken-step-26"),
                                            recipeStep(title: "Stir in chicken", imageTitle: "butter-chicken-step-27")],
                                        
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
        
        Recipe(name: "Spicy Soft Tofu Stew (Sundubu Jjigae)",
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
                                             recipeStep(title: "Add cooking oil to the pan.", imageTitle: "sundubu-step-1"),
                                             recipeStep(title: "Add seasame oil to the pan.", imageTitle: "sundubu-step-2"),
                                             recipeStep(title: "Stir fry green onion.", imageTitle: "sundubu-step-3"),
                                             recipeStep(title: "Add ground pork to the pan.", imageTitle: "sundubu-step-4"),
                                             recipeStep(title: "Add chopped white onions to the pan.", imageTitle: "sundubu-step-5"),
                                             recipeStep(title: "Add minced garlic to the pan.", imageTitle: "sundubu-step-6"),
                                             recipeStep(title: "Add salt to the pan.", imageTitle: "sundubu-step-7"),
                                             recipeStep(title: "Add red chili powder the pan.", imageTitle: "sundubu-step-8"),
                                             recipeStep(title: "Add sugar to the pan.", imageTitle: "sundubu-step-9"),
                                             recipeStep(title: "Add soy sauce to the pan.", imageTitle: "sundubu-step-10"),
                                             recipeStep(title: "Add broth or water into earthen pot.", imageTitle: "sundubu-step-11"),
                                             recipeStep(title: "Add paste into earthen pot.", imageTitle: "sundubu-step-12"),
                                             recipeStep(title: "Add soft tofu into earthen pot.", imageTitle: "sundubu-step-13"),
                                             recipeStep(title: "Crack egg into earthen pot.", imageTitle: "sundubu-step-14"),
                                             recipeStep(title: "Add pepper into earthen pot.", imageTitle: "sundubu-step-15"),
                                             recipeStep(title: "Sprinkle cheongyang pepper into earthen pot.", imageTitle: "sundubu-step-16"),
                                             recipeStep(title: "Sprinkle chopped scallion into earthen pot.", imageTitle: "sundubu-step-17")
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
