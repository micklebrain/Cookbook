//
//  Ingredients.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 10/5/21.
//

import Foundation

class Ingredient {
    
    var name: String
    var quantity: Int
    var type: String
    var unitOfMeasurement: String
    
    init(name: String, type: String, quantity: Int, unitOfMeasurement: String) {
        self.name = name
        self.type = type
        self.quantity = quantity
        self.unitOfMeasurement = unitOfMeasurement
    }
}

enum Spices: String {
    case cayennePepper = "cayenne pepper"
    case chiliPowder = "chili powder"
    case coriander = "coriander"
    case cumin = "cumin"
    case garamMasala = "garam masala"
    case paprika = "paprika"
    case pepper = "pepper"
    case salt = "salt"
    case tumeric = "tumeric"
}

enum Vegetables: String {
    case bokChoy = "bok choy"
    case cilantro = "cilantro"
    case garlic = "garlic"
    case ginger = "ginger"
    case greenOnion = "green onion"
    case lemon = "lemon"
    case mushrooms = "mushrooms"
    case onion = "onion"
    case springOnion = "spring onion"
    case tomatoSauce = "tomato sauce"
    case tomatoPuree = "tomato puree"
}

enum ingredientType: String {
    case oil = "oil"
    case produce = "produce"
    case sauce = "sauce"
    case spice = "spice"
    case vegetable = "vegetable"
}

