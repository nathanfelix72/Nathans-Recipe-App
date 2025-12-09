//
// FavoriteRecipesView.swift
// Felix Favorites
//
// Created by IS 543 on 12/3/25.
//

import SwiftUI
import SwiftData

struct FavoriteRecipesView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    @State private var isEditorPresented = false
    @State private var recipeToEdit: Recipe?
    
    var body: some View {
        @Bindable var recipeViewModel = recipeViewModel
        
        List(selection: $recipeViewModel.selectedRecipe) {
            ForEach(recipeViewModel.filteredFavoriteRecipes) { recipe in
                NavigationLink(value: recipe) {
                    RecipeListRow(recipe: recipe)
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button(role: .destructive) {
                        withAnimation {
                            recipeViewModel.delete(recipe)
                        }
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    Button {
                        recipeToEdit = recipe
                        isEditorPresented = true
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    .tint(.blue)
                }
                .contextMenu {
                    Button {
                        recipeToEdit = recipe
                        isEditorPresented = true
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(role: .destructive) {
                        withAnimation {
                            recipeViewModel.delete(recipe)
                        }
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
        }
        .navigationTitle("Favorite Recipes")
        .sheet(isPresented: $isEditorPresented) {
            RecipeEditor(recipe: recipeToEdit)
                .onDisappear {
                    if !isEditorPresented {
                        recipeToEdit = nil
                    }
                }
        }
        .searchable(text: $recipeViewModel.searchText, prompt: "Search")
        .onAppear {
            recipeViewModel.searchText = ""
        }
        .overlay {
            if recipeViewModel.filteredFavoriteRecipes.isEmpty {
                ContentUnavailableView {
                    Label(recipeViewModel.searchText.isEmpty ? "No recipes" : "No favorite recipes with this search", systemImage: "heart.slash")
                } description: {
                    Text(recipeViewModel.searchText.isEmpty ? "Add some recipes to your favorites" : "No recipes with this search")
                }
            }
        }
    }
}


#Preview {
    let container = try! ModelContainer.sample()
    let recipeViewModel = RecipeViewModel(modelContext: container.mainContext)
    
    return ThreeColumnContentView()
        .modelContainer(container)
        .environment(recipeViewModel)
}
