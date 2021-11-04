//
//  Cookbook.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/5/21.
//

import Foundation
import SwiftUI

class Cookbook: ObservableObject {
    var recipes: [Recipe]  = []
    
    init(recipes: [Recipe]) {                        
        self.recipes.append(contentsOf: recipes)
        self.recipes = self.recipes.sorted(by: { $0.name < $1.name} )
    }
    
    func addRecipe(recipe: Recipe) {        
        self.recipes.append(recipe)
    }
}
