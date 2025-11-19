/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
An extension that creates recipe category instances for use as sample data.
*/

import Foundation
import SwiftData

extension Category {
    static let amphibian = Category(name: "Amphibian")
    static let bird = Category(name: "Bird")
    static let fish = Category(name: "Fish")
    static let invertebrate = Category(name: "Invertebrate")
    static let mammal = Category(name: "Mammal")
    static let reptile = Category(name: "Reptile")

    static func insertSampleData(modelContext: ModelContext) {
        // Add the recipe categories to the model context.
        modelContext.insert(amphibian)
        modelContext.insert(bird)
        modelContext.insert(fish)
        modelContext.insert(invertebrate)
        modelContext.insert(mammal)
        modelContext.insert(reptile)
        
        // Add the recipies to the model context.
        modelContext.insert(Recipe.cookies)
        modelContext.insert(Recipe.cake)
        modelContext.insert(Recipe.pretzels)
        modelContext.insert(Recipe.gibbon)
        modelContext.insert(Recipe.sparrow)
        modelContext.insert(Recipe.newt)
        
        // Set the category for each recipe.
        Recipe.cookies.category = mammal
        Recipe.cake.category = mammal
        Recipe.pretzels.category = mammal
        Recipe.gibbon.category = mammal
        Recipe.sparrow.category = bird
        Recipe.newt.category = amphibian
    }
    
    static func reloadSampleData(modelContext: ModelContext) {
        do {
            try modelContext.delete(model: Category.self)
            insertSampleData(modelContext: modelContext)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
