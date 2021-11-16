//
//  RecipePageView.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/3/21.
//

import SwiftUI

struct RecipePageView: View {
        
    var title: String
    var recipe: Recipe
        
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var ingredientImageData: Data? = nil
    @State private var vibrateOnRing = false
  
    var body: some View {
        ScrollView {
            VStack {
                Button(action: {
                    withAnimation {
                        viewRouter.homePage = true
                    }
                }) {
                    HomeButtonContent()
                }
                Text(title).padding()
                Text("Produce 🥩").padding()
                Text(recipe.ingredients.joined(separator: ", ")).padding()
                Text("Spices 🌶 and Herbs ").padding()
                Text(recipe.spices.joined(separator: ", ")).padding()
                Text("Vegetables 🍅")
                Text(recipe.vegetables.joined(separator: ", ")).padding()
                
                ForEach((0...recipe.recipeSteps.count), id: \.self) {
                    if $0 != recipe.recipeSteps.count {
                        Text("\($0+1). \(recipe.recipeSteps[$0].title)")
                        if (recipe.recipeSteps[$0].imageTitle != "") {
//                            let height = UIScreen.main.bounds.height * 0.9
                            GIFImage(name: recipe.recipeSteps[$0].imageTitle).frame(height: 300)
                        }
//                        if let data = ingredientImageData {
//                            GIFImage(data: data)
//                                .frame(width: 300)
//                        } else {
//                            Text("Loading...")
//                                .onAppear(perform: loadData)
//                        }
                    }
                }
                
//                Button(action: {
//                    withAnimation {
//                        let nextRecipePage = viewRouter.nextRecipe()
//                        if viewRouter.currentRecipePage == 0 {
//                            viewRouter.homePage = true
//                        } else {
//                            viewRouter.currentPage = nextRecipePage
//                        }
//                    }
//                }) {
//                    NextRecipeContent()
//                }
            }
        }
    }
    
//    private func loadData() {
//        let task = URLSession.shared.dataTask(with: URL(string: "https://github.com/globulus/swiftui-webview/raw/main/Images/preview_macos.gif?raw=true")!) { data, response, error in
//            ingredientImageData = data
//        }
//        task.resume()
//      }
    
}

struct SecondPage: View {
    var body: some View {
        Text("Second Page")
            .padding()
    }
}

struct HomeButtonContent : View {
    var body: some View {
        Text("TABLE OF CONTENTS")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}


struct NextRecipeContent : View {
    var body: some View {
        Text("Next Recipe")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}

//struct RecipePageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

