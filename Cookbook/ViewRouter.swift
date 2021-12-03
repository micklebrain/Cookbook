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
                                          recipe: Recipe(coverImage: "",
                                                         produceAndDairy: [],
                                                         name: "Test",
                                                         recipeSteps: []),
                                          recipeImages: [:])
        self.homePageView = TableOfContentsPageView()
    }
}
