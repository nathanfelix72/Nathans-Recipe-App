//
// ThreeColumnContentView.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI
import SwiftData

struct ThreeColumnContentView: View {
    @Environment(NavigationContext.self) private var navigationContext
    
    var body: some View {
        @Bindable var navigationContext = navigationContext
        NavigationSplitView(columnVisibility: $navigationContext.columnVisibility) {
            RecipeCategoryListView()
                .navigationTitle(navigationContext.sidebarTitle)
        } content: {
            RecipeListView(recipeCategoryName: navigationContext.selectedCategoryName)
                .navigationTitle(navigationContext.contentListTitle)
        } detail: {
            NavigationStack {
                RecipeDetailView(recipe: navigationContext.selectedRecipe)
            }
        }
    }
}

//#Preview {
//    ModelContainerPreview(ModelContainer.sample) {
//        ThreeColumnContentView()
//            .environment(NavigationContext())
//    }
//}
