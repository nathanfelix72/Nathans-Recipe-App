//
// FelixFavoritesApp.swift
// Felix Favorites
//
// Created by Nathan Felix on 11/13/25
//

import SwiftUI
import SwiftData

// I had AI help me figure this out. It's probably not the best way but having these two structs makes it actually work right on the simulator
@main
struct FelixFavoritesApp: App {
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
