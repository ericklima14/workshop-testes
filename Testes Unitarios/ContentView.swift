//
//  ContentView.swift
//  Testes Unitarios
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject private var viewModel: TaskViewModel
    
    init(repository: TaskRepositoryProtocol){
        _viewModel = StateObject(wrappedValue: TaskViewModel(repository: repository))
    }
    
    
    var body: some View {
        TaskListView(viewModel: viewModel)
    }
}


#Preview {
    ContentView(repository: MockTaskRepository())
}
