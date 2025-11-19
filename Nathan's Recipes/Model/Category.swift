//
// Category.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import Foundation
import SwiftData

@Model
final class Category {
    @Attribute(.unique) var name: String
    // `.cascade` tells SwiftData to delete all recipes contained in the
    // category when deleting it.
    @Relationship(deleteRule: .cascade, inverse: \Recipe.category)
    var recipes = [Recipe]()
    
    init(name: String) {
        self.name = name
    }
}
