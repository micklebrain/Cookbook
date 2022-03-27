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
               produceAndDairy: [
                Ingredient(name: "chicken breasts", quantity: 2, unitOfMeasurement: "lbs"),
                Ingredient(name: "cream", quantity: 1, unitOfMeasurement: "cup"),
                Ingredient(name: "butter", quantity: 6, unitOfMeasurement: "tablespoon"),
                Ingredient(name: "yogurt", quantity: 125, unitOfMeasurement: "grams")
               ],
               name: "Butter Chicken (Chicken Tikka Masala)",
               recipeSteps: [
                RecipeStep(title: "Chop chicken breasts and add to bowl ."),
                RecipeStep(title: "Add yourt in bowl with chicken."),
                RecipeStep(title: "Squeeze in one lemon."),
                RecipeStep(title: "Add 6 cloves of garlic."),
                RecipeStep(title: "Add a tablespoon of ginger."),
                RecipeStep(title: "Add 2 teaspoons of salt."),
                RecipeStep(title: "Add 2 teaspoons of cumin."),
                RecipeStep(title: "Add 2 teaspoons of garam masala."),
                RecipeStep(title: "Add 2 teaspoons of paprika."),
                RecipeStep(title: "Mix than marinate for at least 1 hour."),
                RecipeStep(title: "Bake for 15 minutes in skewers at 500 degrees farenheight."),
                RecipeStep(title: "Add tablespoons of cooking oil to pot."),
                RecipeStep(title: "Add 1 chopped onions."),
                RecipeStep(title: "Add 8 cloves of garlic."),
                RecipeStep(title: "Add 2 tablespoons of ginger."),
                RecipeStep(title: "Add 2 teaspoons of cumin."),
                RecipeStep(title: "Add 2 teaspoons of tumeric."),
                RecipeStep(title: "Add 2 teaspoons of coriander."),
                RecipeStep(title: "Add 2 teaspoons of chili powder."),
                RecipeStep(title: "Add 2 teaspoons of paprika."),
                RecipeStep(title: "Add 2 teaspoons of garam masala."),
                RecipeStep(title: "Mix it up."),
                RecipeStep(title: "Stir in 1 tablespoon tomato puree."),
                RecipeStep(title: "Stir in 800 grams of tomato sauce."),
                RecipeStep(title: "Pour in water."),
                RecipeStep(title: "Stir in 250 ml of cream."),
                RecipeStep(title: "Stir in chicken.")],
               
               spices: [
                Ingredient(name: Spices.cayennePepper.rawValue, quantity: 1, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.chiliPowder.rawValue, quantity: 2, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.coriander.rawValue, quantity: 2, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.cumin.rawValue, quantity: 2, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.garamMasala.rawValue, quantity: 3, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.paprika.rawValue, quantity: 2, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.pepper.rawValue, quantity: 2, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.salt.rawValue, quantity: 2, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.tumeric.rawValue, quantity: 0.5, unitOfMeasurement: "teaspoon")
               ],
               
               vegetables: [
                Ingredient(name: Vegetables.cilantro.rawValue, quantity: 1, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Vegetables.garlic.rawValue, quantity: 3, unitOfMeasurement: "minced cloves"),
                Ingredient(name: Vegetables.ginger.rawValue, quantity: 1, unitOfMeasurement: "tablespoon"),
                Ingredient(name: Vegetables.lemon.rawValue, quantity: 1, unitOfMeasurement: "tablespoon"),
                Ingredient(name: Vegetables.tomatoSauce.rawValue, quantity: 14, unitOfMeasurement: "oz"),
                Ingredient(name: Vegetables.tomatoPuree.rawValue, quantity: 1, unitOfMeasurement: "tablespoon"),
                Ingredient(name: "yellow " + Vegetables.onion.rawValue, quantity: 1.5, unitOfMeasurement: "diced"),
                
               ]),
        
        Recipe(coverImage: "chicken-fettuccine-alfredo",
               produceAndDairy: [
                Ingredient(name: "Chicken", quantity: 1, unitOfMeasurement: "lb"),
                Ingredient(name: "fettuccine pasta", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "cheese", quantity: 0, unitOfMeasurement: ""),
               ],
               name: "Chicken Fettuccine Alfredo",
               recipeSteps: [
                RecipeStep(title: "Cook fettuccine pasta in salted water"),
                RecipeStep(title: "Slice one pound of mushrooms"),
                RecipeStep(title: "Finely chop onion"),
                RecipeStep(title: "Mince three large garlic cloves"),
                RecipeStep(title: "Slice two pounds of chicken breasts into strips"),
                RecipeStep(title: "Season chicken with salt"),
                RecipeStep(title: "Season chicken with black pepper"),
                RecipeStep(title: "Add 2 tablespoons of oil in pan"),
                RecipeStep(title: "Sautee chicken"),
                RecipeStep(title: "Add tablespoon of oil"),
                RecipeStep(title: "Add tablespoon of butter"),
                RecipeStep(title: "Sautee onions until soft"),
                RecipeStep(title: "Sautee sliced mushrooms until lightly brown"),
                RecipeStep(title: "Add minced garlic"),
                RecipeStep(title: "Add three and half cups of half and half"),
                RecipeStep(title: "Add chicken to pan"),
                RecipeStep(title: "Add quarter cup of parsley"),
                RecipeStep(title: "Add sea salt"),
                RecipeStep(title: "Add black pepper"),
                RecipeStep(title: "Add cooked and drain pasta to pan and stir"),
               ],
               spices: [
                Ingredient(name: Spices.pepper.rawValue, quantity: 0, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.salt.rawValue, quantity: 0, unitOfMeasurement: "teaspoon")
               ],
               vegetables: [Ingredient(name: Vegetables.garlic.rawValue, quantity: 0, unitOfMeasurement: "cloves")]),
        
        Recipe(coverImage: "chicken-potatoes",
               produceAndDairy: [
                Ingredient(name: "cheese", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "chicken", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "eggs", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "heavy cream", quantity: 0, unitOfMeasurement: ""),
               ],
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
                RecipeStep(title: "Lay out chicken within the pan."),
                RecipeStep(title: "Crack 2 eggs into a bowl."),
                RecipeStep(title: "Add 200ml of heavy cream."),
                RecipeStep(title: "Season with salt."),
                RecipeStep(title: "Add 1 teaspoon of curry."),
                RecipeStep(title: "Season with provencal herbs."),
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
               spices: [
                Ingredient(name: "curry", quantity: 0, unitOfMeasurement: "teaspoon"),
                Ingredient(name: "red pepper", quantity: 0, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.pepper.rawValue, quantity: 0, unitOfMeasurement: "teaspoon"),
                Ingredient(name: Spices.salt.rawValue, quantity: 0, unitOfMeasurement: "teaspoon")
               ],
               vegetables: [
                Ingredient(name: "onions", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "potatoes", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "tomatoes", quantity: 0, unitOfMeasurement: "")
               ]),
        
        Recipe(coverImage: "elota",
               produceAndDairy: [
                Ingredient(name: "butter", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "corn", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "cotija cheese", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "mayonnaise", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "sour cream", quantity: 0, unitOfMeasurement: "")
               ],
               name: "Elota",
               recipeSteps: [
                RecipeStep(title: "Butter corn."),
                RecipeStep(title: "Season corn with salt, pepper, garlic powder, and onion powder."),
                RecipeStep(title: "Chop up cilantro."),
                RecipeStep(title: "Add 1/4 cup of mayonnaise into bowl."),
                RecipeStep(title: "Add 1/4 cup of sour cream into bowl."),
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
               spices: [
                Ingredient(name: Spices.pepper.rawValue, quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: Spices.salt.rawValue, quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "onion powder", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "garlic powder", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "sugar", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "tajin", quantity: 0, unitOfMeasurement: "")
               ],
               vegetables: [
                Ingredient(name: "cilantro", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "garlic", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "lime", quantity: 0, unitOfMeasurement: "")
               ]),
        
        Recipe(coverImage: "ram-don",
               produceAndDairy: [
                Ingredient(name: "beef", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "Chapaghetti instant ramen", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "Neoguri instant ramen", quantity: 0, unitOfMeasurement: "")
               ],
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
                RecipeStep(title: "Stir and add water if dry and if it dosn't mix well."),
                RecipeStep(title: "Add oil packet."),
                RecipeStep(title: "Enjoy!")
               ],
               spices: [],
               vegetables: []),
        
        Recipe(coverImage: "soft-tofu-soup",
               produceAndDairy: [
                Ingredient(name: "broth", quantity: 1, unitOfMeasurement: ""),
                Ingredient(name: "egg", quantity: 1, unitOfMeasurement: ""),
                Ingredient(name: "ground pork", quantity: 25, unitOfMeasurement: "grams"),
                Ingredient(name: "minced garlic", quantity: 15, unitOfMeasurement: "grams"),
                Ingredient(name: "seasame oil", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "shrimp", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "soft tofu", quantity: 1, unitOfMeasurement: "tube"),
                Ingredient(name: "soy sauce", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "vegetable oil", quantity: 0, unitOfMeasurement: "")
               ],
               name: "Spicy Soft Tofu Stew (Sundubu Jjigae)",
               recipeSteps: [
                RecipeStep(title: "Add vegetable oil to the pan."),
                RecipeStep(title: "Add seasame oil to the pan."),
                RecipeStep(title: "Stir fry 25 grams of  green onions."),
                RecipeStep(title: "Add 25 grams of ground pork to the pan."),
                RecipeStep(title: "Add 1/2 chopped white onion to the pan."),
                RecipeStep(title: "Add 15 grams of minced garlic to the pan."),
                RecipeStep(title: "Add salt to the pan."),
                RecipeStep(title: "Add 10 grams red chili powder the pan."),
                RecipeStep(title: "Add 10 grams of sugar to the pan."),
                RecipeStep(title: "Add 10 grams of soy sauce to the pan."),
                RecipeStep(title: "Add 120 grams of broth or water into earthen pot."),
                RecipeStep(title: "Add 180 grams of paste into earthen pot."),
                RecipeStep(title: "Add soft tofu into earthen pot."),
                RecipeStep(title: "Crack egg into earthen pot."),
                RecipeStep(title: "Add black pepper into earthen pot."),
                RecipeStep(title: "Sprinkle 8 grams of cheongyang pepper into earthen pot."),
                RecipeStep(title: "Sprinkle chopped scallion into earthen pot.")
               ],
               spices: [
                Ingredient(name: "red chili flakes", quantity: 10, unitOfMeasurement: "grams"),
                Ingredient(name: "cheongyang pepper", quantity: 8, unitOfMeasurement: "grams")
               ],
               vegetables: [
                Ingredient(name: Vegetables.greenOnion.rawValue, quantity: 25, unitOfMeasurement: "grams"),
                Ingredient(name: "scallions", quantity: 0, unitOfMeasurement: ""),
                Ingredient(name: "white onion", quantity: 1, unitOfMeasurement: "grams")
               ]),
        
        Recipe(coverImage: "spaghetti-and-meatballs",
               produceAndDairy: [],
               name: "Spaghetti and meatballs",
               recipeSteps: [
                RecipeStep(title: "Chop bread into cubes"),
                RecipeStep(title: "Add bread pieces to bowl than add water"),
                RecipeStep(title: "Mixup bread and water"),
                RecipeStep(title: "Add in minced beef"),
                RecipeStep(title: "Add in minced pork"),
                RecipeStep(title: "Crack in one egg")
               ],
               spices: [],
               vegetables: [])
    ])
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(viewRouter).environmentObject(cookbook)
        }
    }
}
