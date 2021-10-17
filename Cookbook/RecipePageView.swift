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
  
    var body: some View {
        ScrollView {
            VStack {
                Text(title).padding()
                Text(recipe.ingredients.joined(separator: ", ")).foregroundColor(.yellow).padding()
                Text(recipe.steps.joined(separator: "\n")).padding()
                if #available(iOS 15.0, *) {
                    AsyncImage(url: URL(string:"https://www.simplyrecipes.com/thmb/FS_5UNnjGeIU8KyKo2w232Iv0Ek=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2014__12__how-to-chop-onion-800-dm-b6fb9167cb87443fb1d3abdef84059ff.jpg")).frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
                } else {
            
                }
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = viewRouter.nextRecipe()
                    }
                }) {
                    NextRecipeContent()
                }
            }
        }
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
