//
//  CookbookApp.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/3/21.
//

import SwiftUI

@main
struct CookbookApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    
    @StateObject var cookbook = Cookbook(recipes: [
        Recipe(name: "Butter Chicken (Chicken Tikka Masala)",
               ingredients: ["2 lbs of chicken breasts",
                             "1 cup of cream",
                             "6 tbsp of butter",
                             "125 grams of yogurt"],
               recipeSteps: [
                recipeStep(title: "Chop Chicken Breasts", imageTitle: "butter-chicken-step-1"),
                recipeStep(title: "Add yourt", imageTitle: "butter-chicken-step-2"),
                recipeStep(title: "Add half a lemon", imageTitle: "butter-chicken-step-3"),
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
                            "white onion"]),
        
        Recipe(name: "Chicken and potato",
               ingredients: ["Chicken", "Potatoes", "Eggs"],
               recipeSteps: [
                recipeStep(title: "Slice onions", imageTitle: "chicken-potatoes-1"),
                recipeStep(title: "Add olive oil to pan", imageTitle: "chicken-potatoes-2"),
                recipeStep(title: "Add onions to pan", imageTitle: "chicken-potatoes-3"),
                recipeStep(title: "Slice potatoes", imageTitle: "chicken-potatoes-4"),
                recipeStep(title: "Add potatoes to pan", imageTitle: "chicken-potatoes-5"),
                recipeStep(title: "Season with salt", imageTitle: "chicken-potatoes-6"),
                recipeStep(title: "Season with black pepper", imageTitle: "chicken-potatoes-7"),
                recipeStep(title: "Chop chicken breasts", imageTitle: "chicken-potatoes-8"),
                recipeStep(title: "Season with salt", imageTitle: "chicken-potatoes-9"),
                recipeStep(title: "Season with black pepper", imageTitle: "chicken-potatoes-10"),
                recipeStep(title: "Season with red pepper", imageTitle: "chicken-potatoes-11"),
                recipeStep(title: "Add chicken to the pan", imageTitle: "chicken-potatoes-12"),
                recipeStep(title: "Crack 2 eggs into bowl", imageTitle: "chicken-potatoes-13"),
                recipeStep(title: "Add 200ml of heavy cream", imageTitle: "chicken-potatoes-14"),
                recipeStep(title: "Add salt", imageTitle: "chicken-potatoes-15"),
                recipeStep(title: "Add 1 tsp of curry", imageTitle: "chicken-potatoes-16"),
                recipeStep(title: "Add provencal herbs", imageTitle: "chicken-potatoes-17"),
                recipeStep(title: "Pour min in pan", imageTitle: "chicken-potatoes-18"),
                recipeStep(title: "Bake 40 minutes at 390 degrees farenheight", imageTitle: "chicken-potatoes-19"),
                recipeStep(title: "", imageTitle: "chicken-potatoes-20"),
                recipeStep(title: "Slice tomatoes", imageTitle: "chicken-potatoes-21"),
                recipeStep(title: "Grate cheese", imageTitle: "chicken-potatoes-22"),
                recipeStep(title: "Take pan out of oven and sprinkle with cheese", imageTitle: "chicken-potatoes-23"),
                recipeStep(title: "Place tomatoes", imageTitle: "chicken-potatoes-24"),
                recipeStep(title: "Season with salt", imageTitle: "chicken-potatoes-25"),
                recipeStep(title: "Bake for another 10 mins", imageTitle: "chicken-potatoes-26"),
                recipeStep(title: "Garnish", imageTitle: "chicken-potatoes-27")
               ],
               spices: [""],
               vegetables: ["Potatoes"]),
        
        Recipe(name: "Ram-Don",
               ingredients: ["Beef",
                             "Chapaghetti instant ramen",
                             "Neoguri instant ramen"],
               recipeSteps: [
                recipeStep(title: "Slice beef into cubes", imageTitle: "Ram-don-1"),
                recipeStep(title: "Season beef with salt", imageTitle: "Ram-don-2"),
                recipeStep(title: "Add water to pot", imageTitle: "Ram-don-3"),
                recipeStep(title: "Add packets of flakes", imageTitle: "Ram-don-4"),
                recipeStep(title: "Add noodles and stir until loosen", imageTitle: "Ram-don-5"),
                recipeStep(title: "Heat pan and add oil", imageTitle: "Ram-don-6"),
                recipeStep(title: "Add meat and cook", imageTitle: "Ram-don-7"),
                recipeStep(title: "Add noodles to pan", imageTitle: "Ram-don-8"),
                recipeStep(title: "Add soup base Chapaghetti packet", imageTitle: "Ram-don-9"),
                recipeStep(title: "Add soup base Neoguri packet", imageTitle: "Ram-don-10"),
                recipeStep(title: "Stir and add water if dry if it dosn't mix well", imageTitle: "Ram-don-11"),
                recipeStep(title: "Add oil packet", imageTitle: "Ram-don-12"),
                recipeStep(title: "Enjoy", imageTitle: "Ram-don-13")
               ],
               spices: [""],
               vegetables: [""]),
        
        Recipe(name: "Elota",
               ingredients: ["Butter", "Cotija cheese", "Corn", "Mayonnaise", "Sour Cream"],
               recipeSteps: [
                recipeStep(title: "Butter corn", imageTitle: "elota-1"),
                recipeStep(title: "Season corn with salt, pepper, garlic powder, and onion powder", imageTitle: "elota-2"),
                recipeStep(title: "Chop up cilantro", imageTitle: "elota-3"),
                recipeStep(title: "Add 1/4 cup mayonnaise", imageTitle: "elota-4"),
                recipeStep(title: "Add 1/4 cup sour cream", imageTitle: "elota-5"),
                recipeStep(title: "Cut and squeeze in lime juice", imageTitle: "elota-6"),
                recipeStep(title: "Add cilantro", imageTitle: "elota-7"),
                recipeStep(title: "Add teaspoon of garlic", imageTitle: "elota-8"),
                recipeStep(title: "Sprinkle Tajin", imageTitle: "elota-9"),
                recipeStep(title: "Add pinch of sugar", imageTitle: "elota-10"),
                recipeStep(title: "Mix up", imageTitle: "elota-11"),
                recipeStep(title: "Break up Cotija cheese", imageTitle: "elota-12"),
                recipeStep(title: "Zest in Lime", imageTitle: "elota-13"),
                recipeStep(title: "Skewer corn and oil grill", imageTitle: "elota-14"),
                recipeStep(title: "Grill corn until it has a little char", imageTitle: "elota-15"),
                recipeStep(title: "Coat corn with sauce", imageTitle: "elota-16"),
                recipeStep(title: "Coat corn with cheese", imageTitle: "elota-17"),
                recipeStep(title: "Sprinkle Tajin on corn", imageTitle: "elota-18"),
                recipeStep(title: "Garnish with cilantro and enjoy", imageTitle: "elota-19"),
               ],
               spices: [Spices.salt.rawValue, Spices.pepper.rawValue, "Onion Powder", "Garlic Powder", "Tajin", "Sugar"],
               vegetables: ["Cilantro", "Garlic", "Lime"])
    ])
    
    //    addRecipe(recipe: Recipe(name: "Baked Salmon",
    //                               ingredients: ["Salmon",
    //                                             Spices.pepper.rawValue,
    //                                             Spices.salt.rawValue,],
    //                               recipeSteps: []))
    //
    //    addRecipe(recipe: Recipe(name: "Brocolli Cheddar Soup",
    //                                      ingredients: ["Broccoli florets",
    //                                                    "Chicken Stock",
    //                                                    "Heavy creamy"],
    //                                      recipeSteps: []))
    //
    //    addRecipe(recipe: Recipe(name: "Banh Xeo",
//                                        ingredients: ["Shrimp",
//                                                      "Cocunut cream",
//                                                      "Green onion",
//                                                      "Pork belly",
//                                                      "Onion",
//                                                      "bean sprouts",
//                                                      "Dry mung beans",
//                                                      "Mustard greens",
//                                                      "Mint",
//                                                      "Cilantro",
//                                                      "Vietnamese perilla"],
    //                                      recipeSteps: []))
    //
    //    addRecipe(recipe: Recipe(name: "Steak and Potatoes",
    //                                       ingredients: ["Steak",
    //                                                     "Potatoes",
    //                                                     Spices.pepper.rawValue,
    //                                                     Spices.salt.rawValue,],
    //                                       recipeSteps: []))
    
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(viewRouter).environmentObject(cookbook)
        }
    }
}
