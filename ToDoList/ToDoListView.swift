//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Robert Beachill on 31/03/2025.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<100, id: \.self) { number in
                    NavigationLink {
                        DetailView()
                    } label: {
                        Text("Item \(number)")
                    }

                }
            }
            .navigationTitle("School Year") //must be inside NavigationStack
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}
