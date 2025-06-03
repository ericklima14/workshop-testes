//
//  ContentView.swift
//  Testes Unitarios
//
//  Created by AppleAcademy1 on 12/05/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        let repository = TaskRepository(context: modelContext)
        let viewModel = TaskViewModel(repository: repository)
        
        TaskListView(viewModel: viewModel)
    }
}


#Preview {
    let config = ModelConfiguration(for: Task.self)
    let container = try! ModelContainer(for: Task.self, configurations: config)
    
    return ContentView()
        .modelContainer(container)
}
