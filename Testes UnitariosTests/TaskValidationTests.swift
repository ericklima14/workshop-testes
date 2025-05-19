//
//  TaskValidationTests.swift
//  Testes UnitariosTests
//
//  Created by AppleAcademy3 on 19/05/25.
//

import XCTest
@testable import TaskManager

final class TaskValidationTests: XCTestCase {
    func testTaskHasTitle() {
        let task = Task(title: "Comprar materiais", details: "", date: Date())
        XCTAssertFalse(task.title.isEmpty, "A tarefa deve ter um título")
    }

    func testTaskDefaultsToIncomplete() {
        let task = Task(title: "Fazer relatório", details: "", date: Date())
        XCTAssertFalse(task.isCompleted, "Tarefa nova deve ser incompleta por padrão")
    }
}
