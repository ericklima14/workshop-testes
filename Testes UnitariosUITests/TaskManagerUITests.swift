//
//  TaskManagerUITests.swift
//  Testes UnitariosUITests
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
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
        titleField.typeText("Teste UI - 1")
        
        var detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Criar o primeiro teste de interface.")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["Teste UI - 1"].waitForExistence(timeout: 3))

        app.buttons["Nova"].tap()
        
        titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("Teste UI - 2")
        
        detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Criar o segundo teste de interface.")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["Teste UI - 2"].waitForExistence(timeout: 3))

        app.buttons["Nova"].tap()
        
        titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("Teste UI - 3")
        
        detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Criar o terceiro teste de interface.")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["Teste UI - 3"].waitForExistence(timeout: 3))

    }
    
    func testAddNewTask2() throws {
        app.buttons["Nova"].tap()
        
        let titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("WWCD25")
        
        let detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Assistir o WWDC25.")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["WWCD25"].waitForExistence(timeout: 3))
    }
    
    func testAddNewTask3() throws {
        app.buttons["Nova"].tap()
        
        let titleField = app.textFields["Título"]
        titleField.tap()
        titleField.typeText("English Talk")
        
        let detailsField = app.textFields["Descrição"]
        detailsField.tap()
        detailsField.typeText("Participar do English Talk com a Maria.")
        
        app.buttons["Salvar"].tap()
        XCTAssertTrue(app.staticTexts["English Talk"].waitForExistence(timeout: 3))
    }

}
