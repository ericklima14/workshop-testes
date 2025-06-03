//
//  IntegrationTests.swift
//  Testes UnitariosTests
//
//  Created by AppleAcademy3 on 19/05/25.
//

import XCTest
import SwiftData
@testable import Testes_Unitarios

final class IntegrationTests: XCTestCase {
    var container: ModelContainer!
    var context: ModelContext!
    var repository: TaskRepositoryProtocol!

    @MainActor
    override func setUpWithError() throws {
        container = try ModelContainer(for: Task.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        context = container.mainContext
        repository = TaskRepository(context: context)
    }

    func testSavingAndFetchingTask() {
        let newTask = Task(title: "Integração SwiftData", details: "Testar persistência", date: Date())
        repository.addTask(newTask)
        let tasks = repository.fetchTasks()
        XCTAssertEqual(tasks.count, 1)
    }

    func testDeleteTaskRemovesFromStore() {
        let task = Task(title: "Excluir", details: "", date: Date())
        repository.addTask(task)
        repository.deleteTask(task)
        XCTAssertEqual(repository.fetchTasks().count, 0)
    }
}

