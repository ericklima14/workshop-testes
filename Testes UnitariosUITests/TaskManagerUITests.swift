//
//  TaskManagerUITests.swift
//  Testes UnitariosUITests
//
//  Created by AppleAcademy3 on 19/05/25.
//

import XCTest
@testable import Testes_Unitarios

final class TaskManagerUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launchArguments.append("UI_TESTING")
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
    }

    func testAddNewTask() throws {
        app.buttons["Nova"].tap()
        
        var titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("Teste UI")
        
        var detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Criar teste de interface")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["Teste UI"].waitForExistence(timeout: 2))

        app.buttons["Nova"].tap()
        
        titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("Teste UI1")
        
        detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Criar teste de interface1")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["Teste UI"].waitForExistence(timeout: 2))

        app.buttons["Nova"].tap()
        
        titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("Teste UI2")
        
        detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Criar teste de interface2")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["Teste UI"].waitForExistence(timeout: 2))

    }
    
    func testAddNewTask2() throws {
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
    
    func testAddNewTask3() throws {
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
