//
//  RecipePageView.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/3/21.
//

import SwiftUI

struct RecipePageView: View {
        
    var title: String
    var contentBody: String
    var recipe: Recipe    
        
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var ingredientImageData: Data? = nil
  
    var body: some View {
        ScrollView {
            VStack {
                Text(title).padding()
                Text(contentBody).foregroundColor(.red).padding()
                ForEach((0...recipe.recipeSteps.count), id: \.self) {
                    if $0 != recipe.recipeSteps.count {
                        Text(recipe.recipeSteps[$0].title)
                        if (recipe.recipeSteps[$0].imageTitle != ""){
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
                Button(action: {
                    withAnimation {
                        let nextRecipePage = viewRouter.nextRecipe()
                        if viewRouter.currentRecipePage == 0 {
                            viewRouter.homePage = true
                        } else {
                            viewRouter.currentPage = nextRecipePage
                        }
                    }
                }) {
                    NextRecipeContent()
                }
            }
        }
    }
    
    private func loadData() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://github.com/globulus/swiftui-webview/raw/main/Images/preview_macos.gif?raw=true")!) { data, response, error in
            ingredientImageData = data
        }
        task.resume()
      }
    
    
}

struct SecondPage: View {
    var body: some View {
        Text("Second Page")
            .padding()
    }
}

//struct RecipePageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

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
