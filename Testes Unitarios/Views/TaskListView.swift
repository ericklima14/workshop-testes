//
//  TaskListView.swift
//  Testes Unitarios
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import SwiftUI

struct TaskListView: View {
    @State private var showForm = false
    @StateObject var viewModel: TaskViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.tasks) { task in
                    HStack {
                        Button {
                            viewModel.toggleCompletion(task)
                        } label: {
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                        }
                        .buttonStyle(.plain)

                        VStack(alignment: .leading) {
                            Text(task.title)
                                .strikethrough(task.isCompleted)
                                .bold()
                            Text(task.details)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .onDelete { indexSet in
                    indexSet.map { viewModel.tasks[$0] }.forEach(viewModel.deleteTask)
                }
            }
            .navigationTitle("Tarefas")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(destination: CalendarView()) {
                        Label("Calendário", systemImage: "calendar")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showForm = true
                    } label: {
                        Label("Nova", systemImage: "plus")
                    }
                }
            }
            .sheet(isPresented: $showForm) {
                AddTaskView(viewModel: viewModel)
            }
        }
    }
}


#Preview {
    let mockRepo = MockTaskRepository()
    let viewModel = TaskViewModel(repository: mockRepo)
    return AddTaskView(viewModel: viewModel)
}

