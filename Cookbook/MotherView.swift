//
//  MotherView.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/26/21.
//

import Foundation

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var currentRecipePage = 0
        
    var body: some View {
        viewRouter.currentPage
    }
    
}
