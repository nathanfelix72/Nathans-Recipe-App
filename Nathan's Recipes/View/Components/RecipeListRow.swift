//
//  RecipeListRow.swift
//  Nathan's Recipes
//
//  Created by IS 543 on 12/2/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import SwiftUI
import SwiftData

struct RecipeListRow: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(recipe.name)
                    .font(.headline)
                
                if recipe.isFavorite {
                    Image(systemName: "heart.fill")
                        .font(.caption)
                        .foregroundStyle(.red)
                }
            }
            
            HStack {
                if recipe.minutes > 0 {
                    Label("\(recipe.minutes) min", systemImage: "clock")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                if recipe.servings > 0 {
                    Label("\(recipe.servings) serving(s)", systemImage: "person.2")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    ThreeColumnContentView()
        .modelContainer(try! ModelContainer.sample())
}
