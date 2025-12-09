//
// AddRecipeButton.swift
// Felix Favorites
//
// Created by IS 543 on 12/6/25.
//

import SwiftUI

struct AddRecipeButton: View {
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
