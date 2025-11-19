//
// SwiftDataViewModel.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI
import SwiftData

protocol ContextReferencing {
    init(modelContext: ModelContext)
    func update()
}

@propertyWrapper struct SwiftDataViewModel<VM: ContextReferencing>: DynamicProperty {
    @State var viewModel: VM?
    @Environment(\.modelContext) private var modelContext
    
    var wrappedValue: VM {
        guard let viewModel else {
            fatalError("Attempt to access nil viewModel as wrappedValue")
        }

        return viewModel
    }
    
    var projectedValue: Binding<VM> {
        Binding(
            get: {
                return wrappedValue
            },
            set: { newValue in
                viewModel = newValue
            }
        )
    }

    mutating func update() {
        if viewModel == nil {
            _viewModel = State(initialValue: VM(modelContext: modelContext))
        }
        viewModel?.update()
    }
}
