//
//  tableOfContentsView.swift
//  Cookbook
//
//  Created by Nathan Thai Nguyen on 10/21/21.
//

import Foundation
import SwiftUI

struct TableOfContentsPageView: View {
    
    var recipes: [String] = []
    
    @EnvironmentObject var cookbook: Cookbook
    @EnvironmentObject var viewRouter: ViewRouter
        
    var body: some View {
        ScrollView {
            VStack {
                Text("Table of Contents").font(.largeTitle)
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
}
