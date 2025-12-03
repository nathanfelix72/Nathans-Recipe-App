//
// RecipeListView.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI
import SwiftData

struct RecipeListView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    
    var body: some View {
        if let recipeCategoryName = recipeViewModel.selectedCategoryName {
            RecipeList(recipeCategoryName: recipeCategoryName)
        } else {
            ContentUnavailableView("Select a category", systemImage: "sidebar.left")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(try! ModelContainer.sample())
}
