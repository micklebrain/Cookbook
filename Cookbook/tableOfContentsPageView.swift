//
//  tableOfContentsView.swift
//  Cookbook
//
//  Created by Nathan Thai Nguyen on 10/21/21.
//

import Foundation
import SwiftUI

struct tableOfContentsPageView: View {
 
    var recipes: [String] = []
    var cookbook = Cookbook()
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            Label("Table of Contents", systemImage: "bolt.fill")
            var count = 0
            ForEach(cookbook.recipes, id: \.name) { recipe in
                Button(action: {
                    withAnimation{
                        viewRouter.currentRecipePage = count
                        
                        var contentBody = recipe.ingredients.joined(separator: ", ")
                        contentBody += "\nSpices \n"
                        contentBody += recipe.spices.joined(separator: ", ")
                        
                        viewRouter.currentPage = RecipePageView(title: recipe.name,
                                                                contentBody: contentBody,
                                                                recipe: recipe)
                        count += 1
                        viewRouter.homePage = false
                    }
                }, label: {
                    Label(recipe.name, systemImage: "bolt.fill")
                })                
            }
        }
    }
    
}
