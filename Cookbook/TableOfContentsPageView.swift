//
//  tableOfContentsView.swift
//  Cookbook
//
//  Created by Nathan Thai Nguyen on 10/21/21.
//

import Foundation
import SwiftUI

import RealmSwift

struct TableOfContentsPageView: View {
    @State var recipes = [Recipe]()
    
    @EnvironmentObject var cookbook: Cookbook
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        // ScrollView {
        VStack {
            Text("Table of Contents").font(.largeTitle)
            var count = 0
            if #available(iOS 15.0, *) {
                List(recipes, id: \.name) { recipe in
                    Button(action: {
                        withAnimation{
                            viewRouter.currentRecipePage = count
                            viewRouter.currentPage = RecipePageView(title: recipe.name,
                                                                    recipe: recipe)
                            count += 1
                            viewRouter.homePage = false
                        }
                    }, label: {
                        Text(recipe.name).font(.title)
                    }).padding()
                        .buttonStyle(.plain)
                    Image(recipe.coverImage)
                        .resizable()
                        .scaledToFit()
                }.task {
                    await getRecipes()
                }
            } else {
                ForEach(cookbook.recipes, id: \.name) { recipe in
                    Button(action: {
                        withAnimation{
                            viewRouter.currentRecipePage = count
                            viewRouter.currentPage = RecipePageView(title: recipe.name,
                                                                    recipe: recipe)
                            count += 1
                            viewRouter.homePage = false
                        }
                    }, label: {
                        Text(recipe.name).font(.title)
                    }).padding()
                        .buttonStyle(.plain)
                    Image(recipe.coverImage)
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
    
    @available(iOS 15.0.0, *)
    func getRecipes() async {
        guard let url = URL(string: "https://cookbookbackend.vercel.app/") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any]
                if let recipesResponse = json!["doc"] as? Array<Any> {
                    var allRecipes = [Recipe]()
                    for recipe in recipesResponse {
                        let cookbookRecipe = recipe as! [String: Any]
                        var steps = [RecipeStep]()
                        if let recipeSteps = cookbookRecipe["recipeSteps"] {
                            for recipe in recipeSteps as! [String] {
                                steps.append(RecipeStep(title: recipe))
                            }
                        }
                        var allIngredient = [Ingredient]()
                        if let ingredientsResponse = cookbookRecipe["ingredients"] {
                            for ingredient in ingredientsResponse as! Array<Any> {
                                let singleIngredient = ingredient as! [String: Any]
                                allIngredient.append(Ingredient(name: singleIngredient["name"] as! String,
                                                                quantity: singleIngredient["quantity"] as! Double,
                                                                unitOfMeasurement: singleIngredient["unitOfMeasurement"] as! String))
                            }
                        }
                        allRecipes.append(Recipe(coverImage: cookbookRecipe["coverImage"] as! String,
                                                 produceAndDairy: allIngredient,
                                                 name: cookbookRecipe["name"] as! String,
                                                 recipeSteps: steps))
                    }
                    self.recipes = allRecipes
                    self.recipes.sort(by: { $0.name < $1.name })
                }
            } catch {
                print("erroMsg")
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
}

class RecipeRealm: Object {
    @objc dynamic var coverImage = ""
}

class IngredientRealm: Object {
    @objc dynamic var name = ""
}

