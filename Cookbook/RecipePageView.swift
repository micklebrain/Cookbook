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
    
    var count = 0
    
    //    var idenityPoolId = ProcessInfo.processInfo.environment["identityPoolId"]!
    var idenityPoolId = Bundle.main.object(forInfoDictionaryKey: "IdentityPoolId") as? String
    
    var body: some View {
        ScrollView {
            
            ScrollViewReader { scrollView in
                
  // Numbers to jump to steps
//                ForEach(1..<recipe.recipeSteps.count) { index in
//                    Button("Jump to \(index)") {
//                        scrollView.scrollTo(index)
//                    }
//                }
                
                Button(action: {
                    withAnimation {
                        viewRouter.homePage = true
                    }
                }) {
                    TableOfContentsButtonContent()
                }.buttonStyle(.plain)
                
                Text(title).font(.largeTitle).fontWeight(.bold).padding()
                
                VStack(alignment: .leading, spacing: 5, content: {
                    
                    Text("Ingredients").fontWeight(.bold).padding()
                    
//                    Text("Produce 🥩 & Dairy 🐮").fontWeight(.bold).padding()
                    ForEach(1..<recipe.produceAndDairy.count) { i in
                        HStack {
                            Text("\(recipe.produceAndDairy[i].name)").padding(.leading, 8)
                            Spacer()
                            Text(String(format: "%.1f", recipe.produceAndDairy[i].quantity) + " \(recipe.produceAndDairy[i].unitOfMeasurement)").padding(.trailing, 8)
                        }
                    }
                    
//                    Text("Spices 🌶 & Herbs 🌿").fontWeight(.bold).padding()
                    ForEach(1..<recipe.spicesAndHerbs.count) { i in
                        HStack {
                            Text("\(recipe.spicesAndHerbs[i].name)").padding(.leading, 8)
                            Spacer()
                            Text(String(format: "%.1f", recipe.spicesAndHerbs[i].quantity) + " \(recipe.spicesAndHerbs[i].unitOfMeasurement)").padding(.trailing, 8)
                        }
                    }
                    
//                    Text("Vegetables 🍅").fontWeight(.bold).padding()
                    ForEach(1..<recipe.vegetables.count) { i in
                        HStack {
                            Text("\(recipe.vegetables[i].name)").padding(.leading, 8)
                            Spacer()
                            Text(String(format: "%.1f", recipe.vegetables[i].quantity) + " \(recipe.vegetables[i].unitOfMeasurement)").padding(.trailing, 8)
                        }
                    }
                    
                    Text("Preparation").fontWeight(.bold).padding()
                    
                    // Async load images
                    ForEach(recipe.recipeSteps.indices) { index in
                        Text("\(index+1). \(recipe.recipeSteps[index].title)").padding()
                        let imageTitle = recipe.coverImage + "-step-\(index+1)"
                        if let data = recipeImages[imageTitle] {
                            GIFImage(data: data).frame(height: 300).id(index)
                        } else {
                            let staticImageName = recipe.coverImage + "-static-step-\(index+1)"
                            Image(staticImageName)
                                .resizable()
                                .scaledToFit().onAppear(perform: {
                                    loadData(folder: recipe.coverImage, key: imageTitle)
                                }).id(index)
                        }
                    }

                })
                
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
                                                
            }
        }
    }
    
    private func jumpToStep() {
        //        let string = textView.text.substringWithRange(Range<String.Index>(start: textView.text.startIndex, end: textView.text.startIndex.advancedBy(779)))// your <779 string
        //                let size = string.sizeWithAttributes([NSFontAttributeName:yourFont])
        //          let point = CGPointMake(0, 200)
        //        body.scrollView.setContentOffset(point, animated:true)
    }
    
    private func loadData(folder: String, key: String) {
        let credentialsProvider = AWSCognitoCredentialsProvider(
            regionType: .USEast2,
            identityPoolId: idenityPoolId!)
        
        let configuration = AWSServiceConfiguration(
            region: .USEast2,
            credentialsProvider: credentialsProvider)
        
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
            // Print()
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
            key: folder + "/" + key + ".gif",
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

struct TableOfContentsButtonContent : View {
    var body: some View {
        Label("TABLE OF CONTENTS", systemImage: "book.fill").labelStyle(IconOnlyLabelStyle()).font(.largeTitle)
    }
}

