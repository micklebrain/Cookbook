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
                                                                        
                        viewRouter.currentPage = RecipePageView(title: recipe.name,                                                                
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
