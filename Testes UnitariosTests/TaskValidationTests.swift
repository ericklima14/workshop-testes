//
//  TaskValidationTests.swift
//  Testes UnitariosTests
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import XCTest
@testable import Testes_Unitarios

final class TaskValidationTests: XCTestCase {
    
    func testTaskHasTitle() {
        let task = Task(title: "Comprar materiais", details: "", date: Date())
        XCTAssertFalse(task.title.isEmpty, "A tarefa deve ter um título.")
        print(" -- \nExecutei o teste de adicionar uma tarefa com título na lista.\n --")
    }
    
    func testTaskHasNoTitle() {
        let task = Task(title: "", details: "", date: Date())
        XCTAssertTrue(task.title.isEmpty, "A tarefa não deve ter um título.")
        print(" -- \nExecutei o teste de adicionar uma tarefa sem título na lista.\n --")
    }
    
    func testTaskHasDetails() {
        let task = Task(title: "Comprar materiais", details: "Comprar materiais da construção.", date: Date())
        XCTAssertFalse(task.details.isEmpty, "A tarefa deve ter um comentário.")
        print(" -- \nExecutei o teste de adicionar uma tarefa com comentário na lista.\n --")
    }
    
    func testTaskHasNoDetails() {
        let task = Task(title: "", details: "", date: Date())
        XCTAssertTrue(task.details.isEmpty, "A tarefa não deve ter um comentário.")
        print(" -- \nExecutei o teste de adicionar uma tarefa sem comentário na lista.\n --")
    }

    func testTaskDefaultsToIncomplete() {
        let task = Task(title: "Fazer relatório", details: "", date: Date(), isCompleted: false)
        XCTAssertFalse(task.isCompleted, "Tarefa nova deve ser incompleta por padrão")
        print(" -- \nExecutei o teste de criar uma tarefa sem estar completa.\n --")
    }
    
//    func testTaskDefaultsToComplete() {
//        let task = Task(title: "Fazer relatório", details: "", date: Date(), isCompleted: false)
//        XCTAssertTrue(task.isCompleted, "Tarefa deve estar completa.")
//        print(" -- \nExecutei o teste de criar uma tarefa estando completa.\n --")
//    }
}
