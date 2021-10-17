//
//  CookbookApp.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/3/21.
//

import SwiftUI

@main
struct CookbookApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
//            viewRouter.currentPage = ContentView(recipe: Recipe(name: "Entire Cookbook", ingredients: ["Salt", "Pepper"]))
            MotherView().environmentObject(viewRouter)
        }
    }
}
