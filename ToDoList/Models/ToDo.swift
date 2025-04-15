//
//  ToDo.swift
//  ToDoList
//
//  Created by Robert Beachill on 06/04/2025.
//

import Foundation
import SwiftData

@MainActor
@Model
class ToDo {
    var item = ""
    var reminderIsOn = false
    var dueDate = Date.now + 60*60*24
    var notes = ""
    var isCompleted = false
    
    init(item: String = "", reminderIsOn: Bool = false, dueDate: Date = Date.now + 60*60*24, notes: String = "", isCompleted: Bool = false) {
        self.item = item
        self.reminderIsOn = reminderIsOn
        self.dueDate = dueDate
        self.notes = notes
        self.isCompleted = isCompleted
    }
}

extension ToDo {
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: ToDo.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        // Add Mock Data
        container.mainContext.insert(ToDo(item: "Create SwiftData Lessons", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "Now with iOS16 & XCode 18", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Macedonian Educators Talk", reminderIsOn: true, dueDate: Date.now + 60*60*44, notes: "They want to learn about entrepreneurship", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Post flyes for Swift in Santiago", reminderIsOn: true, dueDate: Date.now + 60*60*72, notes: "To be hedl at UAH in Chile", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Prepare old iPhone for Lily", reminderIsOn: true, dueDate: Date.now + 60*60*12, notes: "She gets my old Pro", isCompleted: false))
        
        return container
    }
}
