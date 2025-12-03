//
// RecipeViewModel.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
//

import SwiftUI
import SwiftData

@Observable
class RecipeViewModel: ContextReferencing {
    
    // MARK: - Properties
    
    private var modelContext: ModelContext
    
    var selectedCategoryNames: String?
    var selectedRecipe: Recipe?
    var columnVisibility: NavigationSplitViewVisibility = .automatic
    
    var sidebarTitle = "Categories"
    
    // Cached data
    var recipeCategories: [Category] = []
    var recipes: [Recipe] = []
    
    // MARK: - Initialization
    
    required init(modelContext: ModelContext) {
        self.modelContext = modelContext
        update()
    }
    
    // MARK: - Model Access
    
    // read all recipes
    // read favorites
    // read a category's recipes
    // ...
    
    var contentListTitle: String {
        if let selectedCategoryNames {
            selectedCategoryNames
        } else {
            ""
        }
    }
    
    func categoryText(for recipe: Recipe) -> String {
        recipe.categories.compactMap(\.name).joined(separator: ", ")
    }
    
    // MARK: - User Intents
    
    // Simple compatibility convenience: keep existing simple create/update signatures
    func createRecipe(name: String, categories: [Category]) {
        createRecipe(
            name: name,
            author: "Unknown",
            date: Date(),
            minutes: 20,
            servings: 1,
            expertiseLevel: "Easy",
            calories: 100,
            isFavorite: false,
            notes: "",
            ingredients: "",
            instructions: "",
            categories: categories
        )
    }
    
    func updateRecipe(_ recipe: Recipe, name: String, categories: [Category]) {
        updateRecipe(
            recipe,
            name: name,
            author: recipe.author,
            date: recipe.date,
            minutes: recipe.minutes,
            servings: recipe.servings,
            expertiseLevel: recipe.expertiseLevel,
            calories: recipe.calories,
            isFavorite: recipe.isFavorite,
            notes: recipe.notes,
            ingredients: recipe.ingredients,
            instructions: recipe.instructions,
            categories: categories
        )
    }
    
    // Full create/update with all editable fields
    func createRecipe(
        name: String,
        author: String,
        date: Date,
        minutes: Int,
        servings: Int,
        expertiseLevel: String,
        calories: Int,
        isFavorite: Bool,
        notes: String,
        ingredients: String,
        instructions: String,
        categories: [Category]
    ) {
        let newRecipe = Recipe(name: name)
        newRecipe.author = author
        newRecipe.date = date
        newRecipe.minutes = minutes
        newRecipe.servings = servings
        newRecipe.expertiseLevel = expertiseLevel
        newRecipe.calories = calories
        newRecipe.isFavorite = isFavorite
        newRecipe.notes = notes
        newRecipe.ingredients = ingredients
        newRecipe.instructions = instructions
        newRecipe.categories = categories
        modelContext.insert(newRecipe)
        update()
    }
    
    func updateRecipe(
        _ recipe: Recipe,
        name: String,
        author: String,
        date: Date,
        minutes: Int,
        servings: Int,
        expertiseLevel: String,
        calories: Int,
        isFavorite: Bool,
        notes: String,
        ingredients: String,
        instructions: String,
        categories: [Category]
    ) {
        recipe.name = name
        recipe.author = author
        recipe.date = date
        recipe.minutes = minutes
        recipe.servings = servings
        recipe.expertiseLevel = expertiseLevel
        recipe.calories = calories
        recipe.isFavorite = isFavorite
        recipe.notes = notes
        recipe.ingredients = ingredients
        recipe.instructions = instructions
        recipe.categories = categories
        update()
    }
    
    func delete(_ recipe: Recipe) {
        if selectedRecipe == recipe {
            selectedRecipe = nil
        }
        
        modelContext.delete(recipe)
        update()
    }
    
    func removeRecipes(at indexSet: IndexSet) {
        for index in indexSet {
            let recipeToDelete = recipes[index]
            if selectedRecipe?.persistentModelID == recipeToDelete.persistentModelID {
                selectedRecipe = nil
            }
            modelContext.delete(recipeToDelete)
        }
        update()
    }
    
    func ensureSomeDataExists() {
        if recipeCategories.isEmpty {
            Category.insertSampleData(modelContext: modelContext)
            update()
        }
    }
    
    func reloadSampleData() {
        selectedRecipe = nil
        selectedCategoryNames = nil
        Category.reloadSampleData(modelContext: modelContext)
        update()
    }
    
    // MARK: - Helpers
    
    func update() {
        let categoryDescriptor = FetchDescriptor<Category>(sortBy: [SortDescriptor(\Category.name)])
        recipeCategories = (try? modelContext.fetch(categoryDescriptor)) ?? []
        
        let recipeDescriptor = FetchDescriptor<Recipe>(sortBy: [SortDescriptor(\Recipe.name)])
        recipes = (try? modelContext.fetch(recipeDescriptor)) ?? []
    }
}
