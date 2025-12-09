//
// CategoryList.swift
// Felix Favorites
//
// Created by IS 543 on 12/2/25.
//

import SwiftUI
import SwiftData

struct CategoryList: View {
    var recipeCategories: [Category]
    
    @Environment(RecipeViewModel.self) private var recipeViewModel
    @State private var categoryToEdit: Category?
    @State private var isEditorPresented = false
    
    var body: some View {
        ForEach(recipeCategories) { recipeCategory in
            NavigationLink(recipeCategory.name, value: recipeCategory.name)
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button(role: .destructive) {
                        withAnimation {
                            recipeViewModel.deleteCategory(recipeCategory)
                        }
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    Button {
                        categoryToEdit = recipeCategory
                        isEditorPresented = true
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    .tint(.blue)
                }
                .contextMenu {
                    Button {
                        categoryToEdit = recipeCategory
                        isEditorPresented = true
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(role: .destructive) {
                        withAnimation {
                            recipeViewModel.deleteCategory(recipeCategory)
                        }
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
        }
        .sheet(isPresented: $isEditorPresented) {
            CategoryEditor(category: categoryToEdit)
                .presentationDetents([.medium])
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
