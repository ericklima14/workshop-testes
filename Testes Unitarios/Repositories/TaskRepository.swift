//
//  TaskRepository.swift
//  Testes Unitarios
//
//  Created by AppleAcademy3 on 19/05/25.
//

import Foundation
import SwiftData

protocol TaskRepositoryProtocol {
    func fetchTasks() -> [Task]
    func addTask(_ task: Task)
    func deleteTask(_ task: Task)
    func toggleCompletion(_ task: Task)
}

class TaskRepository: TaskRepositoryProtocol {
    private var context: ModelContext

    init(context: ModelContext) {
        self.context = context
    }

    func fetchTasks() -> [Task] {
        let descriptor = FetchDescriptor<Task>()
        return (try? context.fetch(descriptor)) ?? []
    }

    func addTask(_ task: Task) {
        context.insert(task)
        try? context.save()
    }

    func deleteTask(_ task: Task) {
        context.delete(task)
        try? context.save()
    }

    func toggleCompletion(_ task: Task) {
        task.isCompleted.toggle()
        try? context.save()
    }
}

class MockTaskRepository: TaskRepositoryProtocol {
    var tasks: [Task] = []

    func fetchTasks() -> [Task] {
        return tasks
    }

    func addTask(_ task: Task) {
        tasks.append(task)
    }

    func deleteTask(_ task: Task) {
        tasks.removeAll { $0 === task }
    }

    func toggleCompletion(_ task: Task) {
        task.isCompleted.toggle()
    }
}

