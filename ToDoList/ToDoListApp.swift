//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Robert Beachill on 31/03/2025.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .modelContainer(for: ToDo.self)
        }
    }
}
