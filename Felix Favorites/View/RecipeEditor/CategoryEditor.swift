//
// CategoryEditor.swift
// Felix Favorites
//
// Created by Nathan Felix on 11/13/25
//

import SwiftUI
import SwiftData

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
                    // Require at least a name to save changes.
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
                    // Edit the incoming category.
                    name = category.name
                }
            }
        }
    }
    
    private func save() {
        if let category {
            // Update existing category
            recipeViewModel.updateCategory(
                category,
                name: name
            )
        } else {
            // Create new category
            recipeViewModel.createCategory(
                name: name
            )
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
