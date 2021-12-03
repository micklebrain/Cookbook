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
        Recipe(coverImage: "butter-chicken",
               produceAndDairy: ["2 lbs of chicken breasts",
                                 "1 cup of cream",
                                 "6 tbsp of butter",
                                 "125 grams of yogurt"],
               name: "Butter Chicken (Chicken Tikka Masala)",
               recipeSteps: [
                RecipeStep(title: "Chop chicken breasts.", imageTitle: "butter-chicken-step-1"),
                RecipeStep(title: "Add yourt in bowl with chicken.", imageTitle: "butter-chicken-step-2"),
                RecipeStep(title: "Squeeze in half a lemon.", imageTitle: "butter-chicken-step-3"),
                RecipeStep(title: "Add garlic.", imageTitle: "butter-chicken-step-4"),
                RecipeStep(title: "Add a tablespoon of ginger.", imageTitle: "butter-chicken-step-5"),
                RecipeStep(title: "Add 2 teaspoons of salt.", imageTitle: "butter-chicken-step-6"),
                RecipeStep(title: "Add 2 teaspoons of cumin.", imageTitle: "butter-chicken-step-7"),
                RecipeStep(title: "Add garam masala.", imageTitle: "butter-chicken-step-8"),
                RecipeStep(title: "Add paprika.", imageTitle: "butter-chicken-step-9"),
                RecipeStep(title: "Mix than marinate for at least 1 hour.", imageTitle: "butter-chicken-step-10"),
                RecipeStep(title: "Bake for 15 minutes in skewers at 500 degrees farenheight.", imageTitle: "butter-chicken-step-11"),
                RecipeStep(title: "Add oil to pot.", imageTitle: "butter-chicken-step-12"),
                RecipeStep(title: "Add onions.", imageTitle: "butter-chicken-step-13"),
                RecipeStep(title: "Add garlic.", imageTitle: "butter-chicken-step-14"),
                RecipeStep(title: "Add ginger.", imageTitle: "butter-chicken-step-15"),
                RecipeStep(title: "Add cumin.", imageTitle: "butter-chicken-step-16"),
                RecipeStep(title: "Add tumeric.", imageTitle: "butter-chicken-step-17"),
                RecipeStep(title: "Add coriander.", imageTitle: "butter-chicken-step-18"),
                RecipeStep(title: "Add chili powder.", imageTitle: "butter-chicken-step-19"),
                RecipeStep(title: "Add paprika.", imageTitle: "butter-chicken-step-20"),
                RecipeStep(title: "Add garam masala.", imageTitle: "butter-chicken-step-21"),
                RecipeStep(title: "Mix up.", imageTitle: "butter-chicken-step-22"),
                RecipeStep(title: "Mix in tomato puree.", imageTitle: "butter-chicken-step-23"),
                RecipeStep(title: "Mix in tomato sauce.", imageTitle: "butter-chicken-step-24"),
                RecipeStep(title: "Pour in water.", imageTitle: "butter-chicken-step-25"),
                RecipeStep(title: "Mix in cream.", imageTitle: "butter-chicken-step-26"),
                RecipeStep(title: "Stir in chicken.", imageTitle: "butter-chicken-step-27")],
               
               spices: ["1 teaspoon of " + Spices.cayennePepper.rawValue,
                        Spices.chiliPowder.rawValue,
                        Spices.coriander.rawValue,
                        Spices.cumin.rawValue,
                        "3 teaspoon of " + Spices.garamMasala.rawValue,
                        Spices.paprika.rawValue,
                        Spices.pepper.rawValue,
                        Spices.salt.rawValue,
                        "1/2 teaspoon of " + Spices.tumeric.rawValue],
               
               vegetables: [Vegetables.cilantro.rawValue,
                            "3 " + Vegetables.garlic.rawValue + " cloves minced",
                            "1 tablespoon of grated " + Vegetables.ginger.rawValue,
                            Vegetables.lemon.rawValue,
                            "14 oz of " + Vegetables.tomatoSauce.rawValue,
                            Vegetables.tomatoPuree.rawValue,
                            "1 1/2 cups of yellow " + Vegetables.onion.rawValue + " diced"]),
        
        Recipe(coverImage: "soft-tofu-soup",
               produceAndDairy: ["broth",
                                 "egg",
                                 "ground pork",
                                 "minced garlic",
                                 "seasame oil",
                                 "shrimp",
                                 "soft tofu",
                                 "soy sauce",
                                 "vegetable oil"],
               name: "Spicy Soft Tofu Stew (Sundubu Jjigae)",
               recipeSteps: [
                RecipeStep(title: "Make the paste."),
                RecipeStep(title: "Add cooking oil to the pan.", imageTitle: "sundubu-step-1"),
                RecipeStep(title: "Add seasame oil to the pan.", imageTitle: "sundubu-step-2"),
                RecipeStep(title: "Stir fry green onion.", imageTitle: "sundubu-step-3"),
                RecipeStep(title: "Add ground pork to the pan.", imageTitle: "sundubu-step-4"),
                RecipeStep(title: "Add chopped white onions to the pan.", imageTitle: "sundubu-step-5"),
                RecipeStep(title: "Add minced garlic to the pan.", imageTitle: "sundubu-step-6"),
                RecipeStep(title: "Add salt to the pan.", imageTitle: "sundubu-step-7"),
                RecipeStep(title: "Add red chili powder the pan.", imageTitle: "sundubu-step-8"),
                RecipeStep(title: "Add sugar to the pan.", imageTitle: "sundubu-step-9"),
                RecipeStep(title: "Add soy sauce to the pan.", imageTitle: "sundubu-step-10"),
                RecipeStep(title: "Add broth or water into earthen pot.", imageTitle: "sundubu-step-11"),
                RecipeStep(title: "Add paste into earthen pot.", imageTitle: "sundubu-step-12"),
                RecipeStep(title: "Add soft tofu into earthen pot.", imageTitle: "sundubu-step-13"),
                RecipeStep(title: "Crack egg into earthen pot.", imageTitle: "sundubu-step-14"),
                RecipeStep(title: "Add pepper into earthen pot.", imageTitle: "sundubu-step-15"),
                RecipeStep(title: "Sprinkle cheongyang pepper into earthen pot.", imageTitle: "sundubu-step-16"),
                RecipeStep(title: "Sprinkle chopped scallion into earthen pot.", imageTitle: "sundubu-step-17")
               ],
               spices: ["red chili flakes",
                        "cheongyang pepper"],
               vegetables: [Vegetables.bokChoy.rawValue,
                            Vegetables.greenOnion.rawValue,
                            Vegetables.mushrooms.rawValue,
                            Vegetables.springOnion.rawValue,
                            "white onion"]),
        
        Recipe(coverImage: "chicken-potatoes",
               produceAndDairy: ["cheese", "chicken", "eggs", "heavy cream"],
               name: "Chicken and potatoes",
               recipeSteps: [
                RecipeStep(title: "Slice 1 onion.", imageTitle: "chicken-potatoes-1"),
                RecipeStep(title: "Add olive oil to pan.", imageTitle: "chicken-potatoes-2"),
                RecipeStep(title: "Add onions to pan.", imageTitle: "chicken-potatoes-3"),
                RecipeStep(title: "Slice 3 potatoes.", imageTitle: "chicken-potatoes-4"),
                RecipeStep(title: "Add potatoes to pan.", imageTitle: "chicken-potatoes-5"),
                RecipeStep(title: "Season with salt.", imageTitle: "chicken-potatoes-6"),
                RecipeStep(title: "Season with black pepper.", imageTitle: "chicken-potatoes-7"),
                RecipeStep(title: "Drizzle with olive oil.", imageTitle: "chicken-potatoes-8"),
                RecipeStep(title: "Chop 3 chicken breasts.", imageTitle: "chicken-potatoes-9"),
                RecipeStep(title: "Season with salt.", imageTitle: "chicken-potatoes-10"),
                RecipeStep(title: "Season with black pepper.", imageTitle: "chicken-potatoes-11"),
                RecipeStep(title: "Season with red pepper.", imageTitle: "chicken-potatoes-12"),
                RecipeStep(title: "Spread chicken around the pan.", imageTitle: "chicken-potatoes-13"),
                RecipeStep(title: "Crack 2 eggs into a bowl.", imageTitle: "chicken-potatoes-14"),
                RecipeStep(title: "Add 200ml of heavy cream.", imageTitle: "chicken-potatoes-15"),
                RecipeStep(title: "Add salt.", imageTitle: "chicken-potatoes-16"),
                RecipeStep(title: "Add 1 tsp of curry.", imageTitle: "chicken-potatoes-17"),
                RecipeStep(title: "Add provencal herbs.", imageTitle: "chicken-potatoes-18"),
                RecipeStep(title: "Pour mix in pan.", imageTitle: "chicken-potatoes-19"),
                RecipeStep(title: "Cover with tin foil and bake 40 minutes at 390 degrees farenheight.", imageTitle: "chicken-potatoes-20"),
                RecipeStep(title: "Slice 1 tomato.", imageTitle: "chicken-potatoes-21"),
                RecipeStep(title: "Grate about 1 cup of cheese.", imageTitle: "chicken-potatoes-22"),
                RecipeStep(title: "Take pan out of oven and sprinkle cheese onto.", imageTitle: "chicken-potatoes-23"),
                RecipeStep(title: "Place and spread out tomatos.", imageTitle: "chicken-potatoes-24"),
                RecipeStep(title: "Sprinkle with salt.", imageTitle: "chicken-potatoes-25"),
                RecipeStep(title: "Bake for another 10 mins.", imageTitle: "chicken-potatoes-26"),
                RecipeStep(title: "Garnish.", imageTitle: "chicken-potatoes-27")
               ],
               spices: ["black pepper", "curry", "red peper", "salt"],
               vegetables: ["onions", "potatoes", "tomatoes"]),
        
        Recipe(coverImage: "ram-dom",
               produceAndDairy: ["beef",
                                 "Chapaghetti instant ramen",
                                 "Neoguri instant ramen"],
               name: "Ram-Don",
               recipeSteps: [
                RecipeStep(title: "Slice beef into cubes.", imageTitle: "Ram-don-1"),
                RecipeStep(title: "Season beef with salt.", imageTitle: "Ram-don-2"),
                RecipeStep(title: "Add water to pot.", imageTitle: "Ram-don-3"),
                RecipeStep(title: "Add packets of flakes.", imageTitle: "Ram-don-4"),
                RecipeStep(title: "Add noodles and stir until loosen.", imageTitle: "Ram-don-5"),
                RecipeStep(title: "Heat pan and add oil.", imageTitle: "Ram-don-6"),
                RecipeStep(title: "Add meat and cook.", imageTitle: "Ram-don-7"),
                RecipeStep(title: "Add noodles to pan.", imageTitle: "Ram-don-8"),
                RecipeStep(title: "Add soup base Chapaghetti packet.", imageTitle: "Ram-don-9"),
                RecipeStep(title: "Add soup base Neoguri packet.", imageTitle: "Ram-don-10"),
                RecipeStep(title: "Stir and add water if dry if it dosn't mix well.", imageTitle: "Ram-don-11"),
                RecipeStep(title: "Add oil packet.", imageTitle: "Ram-don-12"),
                RecipeStep(title: "Enjoy!", imageTitle: "Ram-don-13")
               ],
               spices: ["None"],
               vegetables: ["None"]),
        
        Recipe(coverImage: "elota",
               produceAndDairy: ["butter",
                                 "corn",
                                 "cotija cheese",
                                 "mayonnaise",
                                 "sour cream"],
               name: "Elota",
               recipeSteps: [
                RecipeStep(title: "Butter corn.", imageTitle: "elota-1"),
                RecipeStep(title: "Season corn with salt, pepper, garlic powder, and onion powder.", imageTitle: "elota-2"),
                RecipeStep(title: "Chop up cilantro.", imageTitle: "elota-3"),
                RecipeStep(title: "Add 1/4 cup of mayonnaise.", imageTitle: "elota-4"),
                RecipeStep(title: "Add 1/4 cup of sour cream.", imageTitle: "elota-5"),
                RecipeStep(title: "Cut and squeeze in lime juice.", imageTitle: "elota-6"),
                RecipeStep(title: "Add cilantro.", imageTitle: "elota-7"),
                RecipeStep(title: "Add teaspoon of garlic.", imageTitle: "elota-8"),
                RecipeStep(title: "Sprinkle with Tajin.", imageTitle: "elota-9"),
                RecipeStep(title: "Add pinch of sugar.", imageTitle: "elota-10"),
                RecipeStep(title: "Mix up.", imageTitle: "elota-11"),
                RecipeStep(title: "Break up Cotija cheese.", imageTitle: "elota-12"),
                RecipeStep(title: "Zest in lime.", imageTitle: "elota-13"),
                RecipeStep(title: "Skewer corn and oil grill.", imageTitle: "elota-14"),
                RecipeStep(title: "Grill corn until it has a little char.", imageTitle: "elota-15"),
                RecipeStep(title: "Coat corn with sauce.", imageTitle: "elota-16"),
                RecipeStep(title: "Coat corn with cheese.", imageTitle: "elota-17"),
                RecipeStep(title: "Sprinkle Tajin on corn.", imageTitle: "elota-18"),
                RecipeStep(title: "Garnish with cilantro and enjoy.", imageTitle: "elota-19"),
               ],
               spices: [Spices.salt.rawValue,
                        Spices.pepper.rawValue,
                        "Onion Powder",
                        "Garlic Powder",
                        "Sugar",
                        "Tajin"],
               vegetables: ["cilantro",
                            "garlic",
                            "lime"])
    ])
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(viewRouter).environmentObject(cookbook)
        }
    }
}
