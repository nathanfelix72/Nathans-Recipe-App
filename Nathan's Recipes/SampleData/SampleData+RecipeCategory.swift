//
// SampleData+RecipeCategory.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
//

import Foundation
import SwiftData

extension Category {
    static func insertSampleData(modelContext: ModelContext) {
        // Create new instances of categories
        let italianCat = Category(name: "Italian")
        let americanCat = Category(name: "American")
        let frenchCat = Category(name: "French")
        let mexicanCat = Category(name: "Mexican")
        let asianCat = Category(name: "Asian")
        let mediterraneanCat = Category(name: "Mediterranean")
        let breakfastCat = Category(name: "Breakfast")
        
        // Add the recipe categories to the model context.
        modelContext.insert(italianCat)
        modelContext.insert(americanCat)
        modelContext.insert(frenchCat)
        modelContext.insert(mexicanCat)
        modelContext.insert(asianCat)
        modelContext.insert(mediterraneanCat)
        modelContext.insert(breakfastCat)
        
        // Create new instances of recipes
        let snickerdoodles = Recipe(name: "Snickerdoodles")
        snickerdoodles.author = "Grandma Betty"
        snickerdoodles.minutes = 25
        snickerdoodles.servings = 24
        snickerdoodles.expertiseLevel = "Easy"
        snickerdoodles.calories = 120
        snickerdoodles.notes = "Classic cinnamon sugar cookies with a soft, chewy center"
        snickerdoodles.ingredients = "1 cup butter, softened\n1½ cups sugar\n2 eggs\n2¾ cups flour\n2 tsp cream of tartar\n1 tsp baking soda\n¼ tsp salt\n3 tbsp sugar\n3 tsp cinnamon"
        snickerdoodles.instructions = "1. Preheat oven to 350°F\n2. Cream butter and 1½ cups sugar\n3. Beat in eggs\n4. Mix dry ingredients and combine\n5. Roll into balls, coat with cinnamon-sugar\n6. Bake 10-12 minutes"
        
        let sachertorte = Recipe(name: "Sachertorte")
        sachertorte.author = "Chef Marcel"
        sachertorte.minutes = 120
        sachertorte.servings = 12
        sachertorte.expertiseLevel = "Hard"
        sachertorte.calories = 380
        sachertorte.isFavorite = true
        sachertorte.notes = "Legendary Viennese chocolate cake with apricot jam and chocolate glaze"
        sachertorte.ingredients = "6 oz dark chocolate\n¾ cup butter\n¾ cup sugar\n6 eggs, separated\n1 cup flour\n½ cup apricot jam\nChocolate glaze"
        sachertorte.instructions = "1. Melt chocolate and butter\n2. Beat egg yolks with half the sugar\n3. Whip egg whites with remaining sugar to stiff peaks\n4. Fold everything together with flour\n5. Bake at 350°F for 45 minutes\n6. Split, fill with jam, glaze with chocolate"
        
        let pretzels = Recipe(name: "Bavarian Soft Pretzels")
        pretzels.author = "Hans Mueller"
        pretzels.minutes = 90
        pretzels.servings = 8
        pretzels.expertiseLevel = "Medium"
        pretzels.calories = 280
        pretzels.notes = "Authentic German pretzels with a distinctive golden brown crust"
        pretzels.ingredients = "1½ cups warm water\n1 tbsp sugar\n2 tsp salt\n1 package active dry yeast\n4½ cups flour\n4 tbsp butter, melted\n⅔ cup baking soda\nCoarse salt"
        pretzels.instructions = "1. Dissolve yeast in warm water with sugar\n2. Mix in flour, salt, and butter to form dough\n3. Let rise 1 hour\n4. Shape into pretzel twists\n5. Boil in baking soda water 30 seconds each\n6. Bake at 450°F for 12-15 minutes"
        
        let caesarSalad = Recipe(name: "Caesar Salad")
        caesarSalad.author = "Chef Antonio"
        caesarSalad.minutes = 15
        caesarSalad.servings = 4
        caesarSalad.expertiseLevel = "Easy"
        caesarSalad.calories = 320
        caesarSalad.isFavorite = true
        caesarSalad.notes = "Classic Caesar with homemade dressing and garlic croutons"
        caesarSalad.ingredients = "1 large romaine lettuce\n½ cup olive oil\n2 cloves garlic\n3 anchovy fillets\n1 egg yolk\n2 tbsp lemon juice\n½ cup Parmesan\nCroutons"
        caesarSalad.instructions = "1. Chop romaine lettuce\n2. Blend garlic, anchovies, egg yolk, lemon juice\n3. Slowly drizzle in olive oil while blending\n4. Toss lettuce with dressing\n5. Top with Parmesan and croutons"
        
        let chickenParm = Recipe(name: "Chicken Parmesan")
        chickenParm.author = "Nonna Rosa"
        chickenParm.minutes = 45
        chickenParm.servings = 4
        chickenParm.expertiseLevel = "Medium"
        chickenParm.calories = 520
        chickenParm.notes = "Crispy breaded chicken topped with marinara and melted mozzarella"
        chickenParm.ingredients = "4 chicken breasts\n1 cup flour\n2 eggs, beaten\n2 cups breadcrumbs\n2 cups marinara sauce\n2 cups mozzarella, shredded\n½ cup Parmesan\nFresh basil"
        chickenParm.instructions = "1. Pound chicken to even thickness\n2. Dredge in flour, egg, then breadcrumbs\n3. Pan-fry until golden brown\n4. Place in baking dish, top with marinara and cheese\n5. Bake at 400°F for 20 minutes\n6. Garnish with fresh basil"
        
        let pancakes = Recipe(name: "Buttermilk Pancakes")
        pancakes.author = "Mom"
        pancakes.minutes = 20
        pancakes.servings = 6
        pancakes.expertiseLevel = "Easy"
        pancakes.calories = 280
        pancakes.isFavorite = true
        pancakes.notes = "Fluffy, golden pancakes perfect for weekend breakfast"
        pancakes.ingredients = "2 cups flour\n2 tbsp sugar\n2 tsp baking powder\n1 tsp baking soda\n½ tsp salt\n2 cups buttermilk\n2 eggs\n¼ cup melted butter"
        pancakes.instructions = "1. Mix dry ingredients in large bowl\n2. Whisk buttermilk, eggs, and melted butter\n3. Pour wet into dry, mix until just combined\n4. Heat griddle to 375°F\n5. Pour ¼ cup batter per pancake\n6. Flip when bubbles form, cook until golden"
        
        // Add the recipes to the model context.
        modelContext.insert(snickerdoodles)
        modelContext.insert(sachertorte)
        modelContext.insert(pretzels)
        modelContext.insert(caesarSalad)
        modelContext.insert(chickenParm)
        modelContext.insert(pancakes)
        
        // Set the category for each recipe.
        snickerdoodles.categories.append(americanCat)
        sachertorte.categories.append(frenchCat)
        pretzels.categories.append(americanCat)
        caesarSalad.categories.append(italianCat)
        chickenParm.categories.append(italianCat)
        pancakes.categories.append(americanCat)
        pancakes.categories.append(breakfastCat)
        
        // Save the context
        try? modelContext.save()
    }
    
    static func reloadSampleData(modelContext: ModelContext) {
        do {
            // Fetch and delete recipes individually (this properly handles relationships)
            let recipeDescriptor = FetchDescriptor<Recipe>()
            let allRecipes = try modelContext.fetch(recipeDescriptor)
            for recipe in allRecipes {
                modelContext.delete(recipe)
            }
            
            // Fetch and delete categories individually
            let categoryDescriptor = FetchDescriptor<Category>()
            let allCategories = try modelContext.fetch(categoryDescriptor)
            for category in allCategories {
                modelContext.delete(category)
            }
            
            // Save the deletions
            try modelContext.save()
            
            // Insert fresh sample data
            insertSampleData(modelContext: modelContext)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
