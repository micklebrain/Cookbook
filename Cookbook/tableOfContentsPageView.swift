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
    
    var body: some View {
        VStack {
            Label("Table of Contents", systemImage: "bolt.fill")
            ForEach(cookbook.recipes, id: \.name) { recipe in
                Button(action: {
                    withAnimation{}
                }, label: {
                    Label(recipe.name, systemImage: "bolt.fill")
                })                
            }
        }
    }
    
}
