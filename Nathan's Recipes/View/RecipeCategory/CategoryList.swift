//
//  CategoryList.swift
//  Nathan's Recipes
//
//  Created by IS 543 on 12/2/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import SwiftUI
import SwiftData

struct CategoryList: View {
    var recipeCategories: [Category]
    
    var body: some View {
        ForEach(recipeCategories) { recipeCategory in
            NavigationLink(recipeCategory.name, value: recipeCategory.name)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(try! ModelContainer.sample())
}
