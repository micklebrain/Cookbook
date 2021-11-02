//
//  Ingredients.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 10/5/21.
//

import Foundation

class Ingredient {
    
    var fruits = [""]
    var produce = [""]
    var sauces = [""]
    var spices = [""]
    var vegatables = [""]
    
    var type: String = ""
    
    init(produce: [String], sauces: [String], spices: [String]) {
        self.produce = produce
        self.sauces = sauces
        self.spices = spices
    }
}

