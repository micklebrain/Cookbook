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
    @EnvironmentObject var cookbook: Cookbook
    
    var currentRecipePage = 0
        
    var body: some View {
        if viewRouter.homePage{
            viewRouter.homePageView
        } else {
            viewRouter.currentPage
        }
    }
    
}
