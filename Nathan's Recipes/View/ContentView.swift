//
// ContentView.swift
// Felix Nathan Project 2
//
// Created by Nathan Felix on 11/13/25
// 

import SwiftUI
import SwiftData

struct ContentView: View {
    @SwiftDataViewModel private var navigationContext: NavigationContext

    var body: some View {
        ThreeColumnContentView()
            .environment(navigationContext)
    }
}

#Preview {
    ContentView()
        .modelContainer(try! ModelContainer.sample())
}
