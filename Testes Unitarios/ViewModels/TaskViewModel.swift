//
//  TaskViewModel.swift
//  Testes Unitarios
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import Foundation

@MainActor
class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    private var repository: TaskRepositoryProtocol

    init(repository: TaskRepositoryProtocol) {
        self.repository = repository
        loadTasks()
    }

    func loadTasks() {
        tasks = repository.fetchTasks()
    }

    func addTask(title: String, details: String, date: Date) {
        let task = Task(title: title, details: details, date: date)
        repository.addTask(task)
        loadTasks()
    }

    func deleteTask(_ task: Task) {
        repository.deleteTask(task)
        loadTasks()
    }

    func toggleCompletion(_ task: Task) {
        repository.toggleCompletion(task)
        loadTasks()
    }
}
