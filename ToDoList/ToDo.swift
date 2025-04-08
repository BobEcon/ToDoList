//
//  ToDo.swift
//  ToDoList
//
//  Created by Robert Beachill on 06/04/2025.
//

import Foundation
import SwiftData

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
