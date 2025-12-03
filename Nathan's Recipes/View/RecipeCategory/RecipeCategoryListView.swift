//
// RecipeCategoryListView.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI
import SwiftData

struct RecipeCategoryListView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    @State private var isReloadPresented = false

    var body: some View {
        @Bindable var recipeViewModel = recipeViewModel
        List(selection: $recipeViewModel.selectedCategoryNames) {
            CategoryList(recipeCategories: recipeViewModel.recipeCategories)
        }
        .alert("Reload Sample Data?", isPresented: $isReloadPresented) {
            Button("Yes, reload sample data", role: .destructive) {
                recipeViewModel.reloadSampleData()
            }
        } message: {
            Text("Reloading the sample data deletes all changes to the current data.")
        }
        .toolbar {
            Button {
                isReloadPresented = true
            } label: {
                Label("", systemImage: "arrow.clockwise")
                    .help("Reload sample data")
            }
        }
        .task {
            recipeViewModel.ensureSomeDataExists()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(try! ModelContainer.sample())
}
