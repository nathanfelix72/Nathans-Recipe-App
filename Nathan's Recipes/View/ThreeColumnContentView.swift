//
// ThreeColumnContentView.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI
import SwiftData

struct ThreeColumnContentView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    
    var body: some View {
        @Bindable var recipeViewModel = recipeViewModel
        
        if recipeViewModel.selectedSearchMode == .byCategory {
            // Three-column layout for category browsing
            NavigationSplitView(columnVisibility: $recipeViewModel.columnVisibility) {
                SearchModeView()
                    .navigationTitle(recipeViewModel.sidebarTitle)
            } content: {
                SearchContentView()
                    .navigationTitle(recipeViewModel.contentListTitle)
            } detail: {
                NavigationStack {
                    RecipeDetailView()
                }
            }
        } else {
            // Two-column layout for favorites and all recipes
            NavigationSplitView {
                SearchModeView()
                    .navigationTitle(recipeViewModel.sidebarTitle)
            } detail: {
                NavigationStack {
                    SearchContentView()
                        .navigationTitle(recipeViewModel.contentListTitle)
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(try! ModelContainer.sample())
}

