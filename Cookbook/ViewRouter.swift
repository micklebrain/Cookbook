//
//  ViewRouter.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/26/21.
//

import Foundation
import SwiftUI

import RealmSwift

class ViewRouter: ObservableObject {
    @Published var homePage : Bool = true
    @Published var currentPage: RecipePageView
    
    @EnvironmentObject var cookbook: Cookbook
    
    var currentRecipePage = 0
    var homePageView: TableOfContentsPageView = TableOfContentsPageView()
    
    init() {
        var tableOfContentsPageView = TableOfContentsPageView()
        
        let url = URL(string: "https://cookbookbackend.vercel.app/")!

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any]
                    if let dictionary = json as? [String: Any] {
//                        for (key, value) in dictionary {
//                            print(key)
//                            print(value)
//                        }
                        
                        if let recipes = dictionary["recipes"] as? Array<Any> {
                            let recipes1 = recipes[0] as? [String: Any]
                            let recipes2 = recipes[1] as? [String: Any]
                            tableOfContentsPageView.recipes.append(Recipe(coverImage: recipes1!["name"] as! String,
                                                                          produceAndDairy: [],
                                                                          name: recipes1!["name"] as! String,
                                                                          recipeSteps: []))
                            tableOfContentsPageView.recipes.append(Recipe(coverImage: recipes2!["name"] as! String,
                                                                          produceAndDairy: [],
                                                                          name: recipes2!["name"] as! String,
                                                                          recipeSteps: []))
                            print(tableOfContentsPageView.recipes)
                        }
                    }
                }   catch {
                    print("erroMsg")
                }
            } else if let error = error {
                print("HTTP Request Failed \(error)")
            }
        }

        task.resume()
        
        self.currentPage = RecipePageView(title: "All Recipes",
                                          recipe: Recipe(coverImage: "",
                                                         produceAndDairy: [],
                                                         name: "",
                                                         recipeSteps: []),
                                          recipeImages: [:])
//      self.homePageView = TableOfContentsPageView()
        self.homePageView = tableOfContentsPageView
    }
}
