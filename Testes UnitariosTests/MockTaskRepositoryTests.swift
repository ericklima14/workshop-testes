//
//  MockTaskRepositoryTests.swift
//  Testes UnitariosTests
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import XCTest
@testable import Testes_Unitarios

final class MockTaskRepositoryTests: XCTestCase {
    var viewModel: TaskViewModel!
    var mockRepo: MockTaskRepository!

    @MainActor
    override func setUp() {
        super.setUp()
        mockRepo = MockTaskRepository()
        viewModel = TaskViewModel(repository: mockRepo)
    }

    @MainActor
    func testAddTaskAddsToList() {
        XCTAssertEqual(viewModel.tasks.count, 0)
        viewModel.addTask(title: "Nova tarefa", details: "Descrição", date: Date())
        XCTAssertEqual(viewModel.tasks.count, 1)
        print(" -- \nExecutei o teste de adicionar na lista.\n --")
    }

    @MainActor
    func testToggleCompletionChangesStatus() {
        let task = Task(title: "Tarefa", details: "", date: Date())
        mockRepo.addTask(task)
        viewModel.loadTasks()
        viewModel.toggleCompletion(task)
        XCTAssertTrue(mockRepo.tasks[0].isCompleted)
        print(" -- \nExecutei o teste de marcar uma tarefa como completa.\n --")
    }
}
