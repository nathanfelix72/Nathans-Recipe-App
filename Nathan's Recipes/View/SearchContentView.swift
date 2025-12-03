//
//  SearchContentView.swift
//  Nathan's Recipes
//
//  Created by IS 543 on 12/3/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import SwiftUI
import SwiftData

struct SearchContentView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    
    var body: some View {
        if let searchMode = recipeViewModel.selectedSearchMode {
            switch searchMode {
            case .byCategory:
                CategoryRecipeListView()
            case .byFavorites:
                FavoriteRecipesView()
            case .allRecipes:
                AllRecipesView()
            }
        } else {
            ContentUnavailableView("Select a search mode", systemImage: "sidebar.left")
        }
    }
}

struct CategoryRecipeListView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    
    var body: some View {
        if let categoryName = recipeViewModel.selectedCategoryNames {
            RecipeList(recipeCategoryName: categoryName)
        } else {
            ContentUnavailableView("Select a category", systemImage: "folder")
        }
    }
}

struct FavoriteRecipesView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    @State private var isEditorPresented = false
    
    var body: some View {
        @Bindable var recipeViewModel = recipeViewModel
        
        List(selection: $recipeViewModel.selectedRecipe) {
            ForEach(recipeViewModel.favoriteRecipes) { recipe in
                NavigationLink(value: recipe) {
                    RecipeListRow(recipe: recipe)
                }
            }
        }
        .navigationTitle("Favorite Recipes")
        .overlay {
            if recipeViewModel.favoriteRecipes.isEmpty {
                ContentUnavailableView {
                    Label("No favorite recipes yet", systemImage: "heart.slash")
                } description: {
                    Text("Mark recipes as favorites to see them here")
                }
            }
        }
    }
}

struct AllRecipesView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    @State private var isEditorPresented = false
    
    var body: some View {
        @Bindable var recipeViewModel = recipeViewModel
        
        List(selection: $recipeViewModel.selectedRecipe) {
            ForEach(recipeViewModel.recipes) { recipe in
                NavigationLink(value: recipe) {
                    RecipeListRow(recipe: recipe)
                }
            }
            .onDelete(perform: removeRecipes)
        }
        .navigationTitle("All Recipes")
        .sheet(isPresented: $isEditorPresented) {
            RecipeEditor(recipe: nil)
        }
        .overlay {
            if recipeViewModel.recipes.isEmpty {
                ContentUnavailableView {
                    Label("No recipes yet", systemImage: Default.imageName)
                } description: {
                    AddRecipeButton(isActive: $isEditorPresented)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                AddRecipeButton(isActive: $isEditorPresented)
            }
        }
    }
    
    private func removeRecipes(at indexSet: IndexSet) {
        recipeViewModel.removeRecipes(at: indexSet)
    }
}

private struct AddRecipeButton: View {
    @Binding var isActive: Bool
    
    var body: some View {
        Button {
            isActive = true
        } label: {
            Label("Add a recipe", systemImage: "plus")
                .help("Add a recipe")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(try! ModelContainer.sample())
}
