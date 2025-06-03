//
//  TaskManagerUITests.swift
//  Testes UnitariosUITests
//
//  Created by AppleAcademy3 on 19/05/25.
//

import XCTest

final class TaskManagerUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
    }
    
    func testAddNewTask() throws {
        app.buttons["Nova"].tap()
        let titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("Teste UI")
        let detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Criar teste de interface")
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["Teste UI"].waitForExistence(timeout: 2))
    }
    
}
