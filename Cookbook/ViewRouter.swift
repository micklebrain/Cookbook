//
//  ViewRouter.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/26/21.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var homePage : Bool = true
    @Published var currentPage: RecipePageView
    
    var currentRecipePage = 0
    var homePageView: TableOfContentsPageView
    
    init() {
        self.currentPage = RecipePageView(title: "All Recipes",
                                          recipe: Recipe(name: "Test",
                                                         ingredients: [],
                                                         recipeSteps: []))
        self.homePageView = TableOfContentsPageView()
    }
    
    //    func nextRecipe() -> RecipePageView {
    //        if (currentRecipePage >= cookBook.recipes.count-1) {
    //            homePage = true
    //            currentRecipePage = 0
    //        } else {
    //            currentRecipePage += 1
    //        }
    //
    //        let recipePV = RecipePageView(title: cookBook.recipes[currentRecipePage].name,
    //                                      recipe: cookBook.recipes[currentRecipePage])
    //
    //        homePage = false
    //        return recipePV
    //    }
    
}
