//
// Recipe.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import Foundation
import SwiftData

@Model
final class Recipe {
    var name: String
    var author: String = "Unknown"
    var date: Date = Date()
    var minutes: Int = 20
    var servings: Int = 1
    var expertiseLevel: String = "Easy"
    var calories: Int = 100
    var isFavorite: Bool = false
    var notes: String = "Example Notes"
    var ingredients: String = "Example Ingredients"
    var instructions: String = "Example Instructions"
    var categories: [Category] = []
    
    init(name: String) {
        self.name = name
    }
}

extension Recipe {
    var asSearchString: String {
        let result = "\(name) \(ingredients) \(instructions) \(notes)"

        return result.lowercased()
    }
}
