//
//  Ingredients.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 10/5/21.
//

import Foundation

class Ingredient {
    var name: String
    var quantity: Double
    var unitOfMeasurement: String
    
    init(name: String, quantity: Double, unitOfMeasurement: String) {
        self.name = name
        self.quantity = quantity
        self.unitOfMeasurement = unitOfMeasurement
    }
}

enum Produce: String {
    case beef = "beef"
    case chickenBreasts = "chicken breasts"
    case pork = "pork"
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
    case turmeric = "turmeric"
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

