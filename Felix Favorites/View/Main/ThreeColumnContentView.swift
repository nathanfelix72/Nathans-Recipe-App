//
// ThreeColumnContentView.swift
// Felix Favorites
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI
import SwiftData

struct ThreeColumnContentView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    
    var body: some View {
        @Bindable var recipeViewModel = recipeViewModel
        
        NavigationSplitView(columnVisibility: $recipeViewModel.columnVisibility) {
            SidebarView()
        } content: {
            ContentListView()
        } detail: {
            NavigationStack {
                RecipeDetailView()
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
