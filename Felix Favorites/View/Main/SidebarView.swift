//
// SidebarView.swift
// Felix Favorites
//
// Created by IS 543 on 12/3/25.
//

import SwiftUI
import SwiftData

struct SidebarView: View {
    @Environment(RecipeViewModel.self) private var recipeViewModel
    @State private var isReloadPresented = false
    @State private var isAddCategoryPresented = false

    var body: some View {
        @Bindable var recipeViewModel = recipeViewModel
        
        List(selection: $recipeViewModel.selectedCategoryNames) {
            Section("Search By:") {
                NavigationLink(destination: FavoriteRecipesView()) {
                    Label(SearchMode.byFavorites.rawValue, systemImage: SearchMode.byFavorites.icon)
                }
                
                NavigationLink(destination: AllRecipesView(searchText: "")) {
                    Label(SearchMode.allRecipes.rawValue, systemImage: SearchMode.allRecipes.icon)
                }
            }
            
            Section {
                CategoryList(recipeCategories: recipeViewModel.recipeCategories)
            } header: {
                HStack {
                    Text("Categories")
                    Spacer()
                    Button {
                        isAddCategoryPresented = true
                    } label: {
                        Image(systemName: "plus")
                    }
                    .buttonStyle(.borderless)
                    .help("Add new category")
                }
            }
        }
        .navigationTitle("Recipes")
        .alert("Reload Sample Data?", isPresented: $isReloadPresented) {
            Button("Yes, reload sample data", role: .destructive) {
                recipeViewModel.reloadSampleData()
            }
        } message: {
            Text("Reloading the sample data deletes all changes to the current data.")
        }
        .sheet(isPresented: $isAddCategoryPresented) {
            CategoryEditor(category: nil)
                .presentationDetents([.medium])
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
    let container = try! ModelContainer.sample()
    let recipeViewModel = RecipeViewModel(modelContext: container.mainContext)
    
    return ThreeColumnContentView()
        .modelContainer(container)
        .environment(recipeViewModel)
}
