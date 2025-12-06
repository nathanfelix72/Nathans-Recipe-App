//
// NathansRecipesApp.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI

@main
struct NathansRecipesApp: App {
    @SwiftDataViewModel private var recipeViewModel: RecipeViewModel
    
    var body: some Scene {
        WindowGroup() {
            ThreeColumnContentView()
                .environment(recipeViewModel)
        }
        .modelContainer(for: Category.self)
    }
}
