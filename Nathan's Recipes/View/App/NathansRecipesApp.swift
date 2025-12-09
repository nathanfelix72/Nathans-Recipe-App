//
// NathansRecipesApp.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
//

import SwiftUI
import SwiftData

@main
struct NathansRecipesApp: App {
    var body: some Scene {
        WindowGroup() {
            ContentWrapperView()
        }
        .modelContainer(for: [Category.self, Recipe.self])
    }
}

struct ContentWrapperView: View {
    @SwiftDataViewModel private var recipeViewModel: RecipeViewModel
    
    var body: some View {
        ThreeColumnContentView()
            .environment(recipeViewModel)
    }
}
