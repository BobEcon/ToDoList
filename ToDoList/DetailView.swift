//
//  DetailView.swift
//  ToDoList
//
//  Created by Robert Beachill on 31/03/2025.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss //use this line
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are a Swifty Legend!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!") {
                dismiss() //and this to dismiss a screen
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        
    }
}

#Preview {
    DetailView()
}
