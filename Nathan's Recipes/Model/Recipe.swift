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
    var diet: Diet
    var category: Category?
    
    init(name: String, diet: Diet) {
        self.name = name
        self.diet = diet
    }
}

extension Recipe {
    enum Diet: String, CaseIterable, Codable {
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
        case dessert = "Dessert"
        case snack = "Snack"
    }
}
