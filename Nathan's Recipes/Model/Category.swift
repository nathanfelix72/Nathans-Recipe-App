/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A model class that defines the properties of an recipe category.
*/

import Foundation
import SwiftData

@Model
final class Category {
    @Attribute(.unique) var name: String
    // `.cascade` tells SwiftData to delete all recipies contained in the
    // category when deleting it.
    @Relationship(deleteRule: .cascade, inverse: \Recipe.category)
    var recipies = [Recipe]()
    
    init(name: String) {
        self.name = name
    }
}
