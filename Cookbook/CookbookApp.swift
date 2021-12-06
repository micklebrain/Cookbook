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
                RecipeStep(title: "Chop chicken breasts."),
                RecipeStep(title: "Add yourt in bowl with chicken."),
                RecipeStep(title: "Squeeze in half a lemon."),
                RecipeStep(title: "Add garlic."),
                RecipeStep(title: "Add a tablespoon of ginger."),
                RecipeStep(title: "Add 2 teaspoons of salt."),
                RecipeStep(title: "Add 2 teaspoons of cumin."),
                RecipeStep(title: "Add garam masala."),
                RecipeStep(title: "Add paprika."),
                RecipeStep(title: "Mix than marinate for at least 1 hour."),
                RecipeStep(title: "Bake for 15 minutes in skewers at 500 degrees farenheight."),
                RecipeStep(title: "Add oil to pot."),
                RecipeStep(title: "Add onions."),
                RecipeStep(title: "Add garlic."),
                RecipeStep(title: "Add ginger."),
                RecipeStep(title: "Add cumin."),
                RecipeStep(title: "Add tumeric."),
                RecipeStep(title: "Add coriander."),
                RecipeStep(title: "Add chili powder."),
                RecipeStep(title: "Add paprika."),
                RecipeStep(title: "Add garam masala."),
                RecipeStep(title: "Mix it up."),
                RecipeStep(title: "Stir in tomato puree."),
                RecipeStep(title: "Stir in tomato sauce."),
                RecipeStep(title: "Pour in water."),
                RecipeStep(title: "Stir in cream."),
                RecipeStep(title: "Stir in chicken.")],
               
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
                RecipeStep(title: "Add cooking oil to the pan."),
                RecipeStep(title: "Add seasame oil to the pan."),
                RecipeStep(title: "Stir fry green onion."),
                RecipeStep(title: "Add ground pork to the pan."),
                RecipeStep(title: "Add chopped white onions to the pan."),
                RecipeStep(title: "Add minced garlic to the pan."),
                RecipeStep(title: "Add salt to the pan."),
                RecipeStep(title: "Add red chili powder the pan."),
                RecipeStep(title: "Add sugar to the pan."),
                RecipeStep(title: "Add soy sauce to the pan."),
                RecipeStep(title: "Add broth or water into earthen pot."),
                RecipeStep(title: "Add paste into earthen pot."),
                RecipeStep(title: "Add soft tofu into earthen pot."),
                RecipeStep(title: "Crack egg into earthen pot."),
                RecipeStep(title: "Add pepper into earthen pot."),
                RecipeStep(title: "Sprinkle cheongyang pepper into earthen pot."),
                RecipeStep(title: "Sprinkle chopped scallion into earthen pot.")
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
                RecipeStep(title: "Slice 1 onion."),
                RecipeStep(title: "Add olive oil to pan."),
                RecipeStep(title: "Add onions to pan."),
                RecipeStep(title: "Slice 3 potatoes."),
                RecipeStep(title: "Add potatoes to pan."),
                RecipeStep(title: "Season with salt."),
                RecipeStep(title: "Season with black pepper."),
                RecipeStep(title: "Drizzle with olive oil."),
                RecipeStep(title: "Chop 3 chicken breasts."),
                RecipeStep(title: "Season with salt."),
                RecipeStep(title: "Season with black pepper."),
                RecipeStep(title: "Season with red pepper."),
                RecipeStep(title: "Spread chicken around the pan."),
                RecipeStep(title: "Crack 2 eggs into a bowl."),
                RecipeStep(title: "Add 200ml of heavy cream."),
                RecipeStep(title: "Add salt."),
                RecipeStep(title: "Add 1 tsp of curry."),
                RecipeStep(title: "Add provencal herbs."),
                RecipeStep(title: "Pour mix in pan."),
                RecipeStep(title: "Cover with tin foil and bake 40 minutes at 390 degrees farenheight."),
                RecipeStep(title: "Slice 1 tomato."),
                RecipeStep(title: "Grate about 1 cup of cheese."),
                RecipeStep(title: "Take pan out of oven and sprinkle cheese onto."),
                RecipeStep(title: "Place and spread out tomatos."),
                RecipeStep(title: "Sprinkle with salt."),
                RecipeStep(title: "Bake for another 10 mins."),
                RecipeStep(title: "Garnish and enjoy")
               ],
               spices: ["black pepper", "curry", "red peper", "salt"],
               vegetables: ["onions", "potatoes", "tomatoes"]),
        
        Recipe(coverImage: "ram-don",
               produceAndDairy: ["beef",
                                 "Chapaghetti instant ramen",
                                 "Neoguri instant ramen"],
               name: "Ram-Don",
               recipeSteps: [
                RecipeStep(title: "Slice beef into cubes."),
                RecipeStep(title: "Season beef with salt."),
                RecipeStep(title: "Add water to pot."),
                RecipeStep(title: "Add packets of flakes."),
                RecipeStep(title: "Add noodles and stir until loosen."),
                RecipeStep(title: "Heat pan and add oil."),
                RecipeStep(title: "Add meat and cook."),
                RecipeStep(title: "Add noodles to pan."),
                RecipeStep(title: "Add soup base Chapaghetti packet."),
                RecipeStep(title: "Add soup base Neoguri packet."),
                RecipeStep(title: "Stir and add water if dry if it dosn't mix well."),
                RecipeStep(title: "Add oil packet."),
                RecipeStep(title: "Enjoy!")
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
                RecipeStep(title: "Butter corn."),
                RecipeStep(title: "Season corn with salt, pepper, garlic powder, and onion powder."),
                RecipeStep(title: "Chop up cilantro."),
                RecipeStep(title: "Add 1/4 cup of mayonnaise."),
                RecipeStep(title: "Add 1/4 cup of sour cream."),
                RecipeStep(title: "Cut and squeeze in lime juice."),
                RecipeStep(title: "Add cilantro."),
                RecipeStep(title: "Add teaspoon of garlic."),
                RecipeStep(title: "Sprinkle with Tajin."),
                RecipeStep(title: "Add pinch of sugar."),
                RecipeStep(title: "Mix up."),
                RecipeStep(title: "Break up Cotija cheese."),
                RecipeStep(title: "Zest in lime."),
                RecipeStep(title: "Skewer corn and oil grill."),
                RecipeStep(title: "Grill corn until it has a little char."),
                RecipeStep(title: "Coat corn with sauce."),
                RecipeStep(title: "Coat corn with cheese."),
                RecipeStep(title: "Sprinkle Tajin on corn."),
                RecipeStep(title: "Garnish with cilantro and enjoy."),
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
