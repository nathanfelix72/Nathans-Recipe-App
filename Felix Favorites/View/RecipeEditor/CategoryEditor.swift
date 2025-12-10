//
// CategoryEditor.swift
// Felix Favorites
//
// Created by Nathan Felix on 11/13/25
//

import SwiftUI
import SwiftData

// This file was created with the help of AI, it was very similar to the recipe editor so I had it do the gruntwork
struct CategoryEditor: View {
    let category: Category?
    
    private var editorTitle: String {
        category == nil ? "Add Category" : "Edit Category"
    }
    
    @State private var name = ""
    
    @Environment(\.dismiss) private var dismiss
    @Environment(RecipeViewModel.self) private var recipeViewModel
    
    var body: some View {
        NavigationStack {
            Form {
                Section("General") {
                    TextField("Name", text: $name)
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(editorTitle)
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        withAnimation {
                            save()
                            dismiss()
                        }
                    }
                    .disabled(name.isEmpty)
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", role: .cancel) {
                        dismiss()
                    }
                }
            }
            .onAppear {
                if let category {
                    name = category.name
                }
            }
        }
    }
    
    private func save() {
        if let category {
            recipeViewModel.updateCategory(
                category,
                name: name
            )
        } else {
            recipeViewModel.createCategory(
                name: name
            )
        }
    }
}

#Preview("Add Category") {
    let container = try! ModelContainer.sample()
    let recipeViewModel = RecipeViewModel(modelContext: container.mainContext)
    
    return CategoryEditor(category: nil)
        .modelContainer(container)
        .environment(recipeViewModel)
}

#Preview("Edit Category") {
    let container = try! ModelContainer.sample()
    let recipeViewModel = RecipeViewModel(modelContext: container.mainContext)
    
    // Fetch the first category from the sample data
    let fetchDescriptor = FetchDescriptor<Category>()
    let categories = try! container.mainContext.fetch(fetchDescriptor)
    let sampleCategory = categories.first!
    
    return CategoryEditor(category: sampleCategory)
        .modelContainer(container)
        .environment(recipeViewModel)
}
