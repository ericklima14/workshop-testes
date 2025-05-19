//
//  AddTaskView.swift
//  Testes Unitarios
//
//  Created by AppleAcademy3 on 19/05/25.
//

import SwiftUI
import SwiftData

struct AddTaskView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: TaskViewModel

    @State private var title = ""
    @State private var details = ""
    @State private var date = Date()

    var body: some View {
        NavigationStack {
            Form {
                TextField("Título", text: $title)
                TextField("Descrição", text: $details)
                DatePicker("Data", selection: $date, displayedComponents: .date)
            }
            .navigationTitle("Nova Tarefa")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Salvar") {
                        viewModel.addTask(title: title, details: details, date: date)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    let mockRepo = MockTaskRepository()
    let viewModel = TaskViewModel(repository: mockRepo)
    return AddTaskView(viewModel: viewModel)
}

