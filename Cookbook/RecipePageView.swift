//
//  RecipePageView.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 8/3/21.
//

import Amplify
import AWSS3
import SwiftUI

struct RecipePageView: View {
    
    var title: String
    @State var recipe: Recipe
    @State var recipeImages: [String: Data] = [:]
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        ScrollView {
            VStack {
                Button(action: {
                    withAnimation {
                        viewRouter.homePage = true
                    }
                }) {
                    HomeButtonContent()
                }.buttonStyle(.plain)
                Text(title).padding()
                Text("Produce 🥩").padding()
                Text(recipe.ingredients.joined(separator: ", ")).padding()
                Text("Spices 🌶 and Herbs 🌿").padding()
                Text(recipe.spices.joined(separator: ", ")).padding()
                Text("Vegetables 🍅")
                Text(recipe.vegetables.joined(separator: ", ")).padding()
                
                // Synchronous load images from device
                //                ForEach((0...recipe.recipeSteps.count), id: \.self) {
                //                    if $0 != recipe.recipeSteps.count {
                //                        Text("\($0+1). \(recipe.recipeSteps[$0].title)")
                //                        if (recipe.recipeSteps[$0].imageTitle != "") {
                //                            // let height = UIScreen.main.bounds.height * 0.9
                //                            GIFImage(name: recipe.recipeSteps[$0].imageTitle).frame(height: 300)
                //                        }
                //                    }
                //                }
                
                // Async load images
                ForEach((0...recipe.recipeSteps.count-1), id: \.self) {
                    Text("\($0+1). \(recipe.recipeSteps[$0].title)")
                    if let data = recipeImages[recipe.recipeSteps[$0].imageTitle] {
                        GIFImage(data: data).frame(height: 300)
                    } else {
                        let imageTitle = recipe.recipeSteps[$0].imageTitle
                        Text("Loading...").onAppear(perform: {
                            loadData(key: imageTitle)
                        })
                    }
                }
            }
        }
    }
    
    private func loadData(key: String) {
        let credentialsProvider = AWSCognitoCredentialsProvider(
            regionType: .USEast2,
            identityPoolId: "us-east-2:8a0f9f0f-8a34-485e-8f41-502e973610b3")
        
        let configuration = AWSServiceConfiguration(
            region: .USEast2,
            credentialsProvider: credentialsProvider)
        //Setup the transfer utility configuration
        let tuConf = AWSS3TransferUtilityConfiguration()
        tuConf.isAccelerateModeEnabled = false
        
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        
        // Register a transfer utility object asynchronously
        AWSS3TransferUtility.register(
            with: configuration!,
            transferUtilityConfiguration: tuConf,
            forKey: key
        ) { (error) in
            if let _ = error {
                print("Error")
                // Handle registration error.
            }
        }
        
        let expression = AWSS3TransferUtilityDownloadExpression()
        expression.progressBlock = {(task, progress) in DispatchQueue.main.async(execute: {
            // print("Got here")
            })
        }
        
        var completionHandler: AWSS3TransferUtilityDownloadCompletionHandlerBlock?
        completionHandler = { (task, URL, data, error) -> Void in
            DispatchQueue.main.async(execute: {
                recipeImages[key] = data
            })
        }
        
        let transferUtility = AWSS3TransferUtility.default()
        transferUtility.downloadData(
            fromBucket: "cookbooka331c28aa140415d930c26412d0f0d99155946-dev",
            key: key + ".gif",
            expression: expression,
            completionHandler: completionHandler
        ).continueWith {
            (task) -> AnyObject? in if let error = task.error {
                print("Error: \(error.localizedDescription)")
            }
            if let _ = task.result {
                // Do something with downloadTask.
            }
            return nil;
        }
    }
}

struct HomeButtonContent : View {
    var body: some View {
        Text("TABLE OF CONTENTS")
            .frame(width: 200, height: 50)
            .padding(.top, 50)
    }
}
