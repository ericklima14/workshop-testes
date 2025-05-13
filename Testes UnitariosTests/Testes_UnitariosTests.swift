//
//  Testes_UnitariosTests.swift
//  Testes UnitariosTests
//
//  Created by AppleAcademy1 on 12/05/25.
//

import XCTest
@testable import Testes_Unitarios

final class Testes_UnitariosTests: XCTestCase {

    private var calc: Calculadora!
    
    override func setUpWithError() throws {
        calc = Calculadora()
    }

    override func tearDownWithError() throws {
        calc = nil
    }

    func testSoma(){
        let result = calc.soma(a: 10, b: 20)
        XCTAssertEqual(result, 30)
    }
    
    func testSub(){
        let result = calc.sub(a: 10, b: 20)
        XCTAssertEqual(result, -10)
    }
    
    func testMul(){
        let result = calc.mul(a: 10, b: 20)
        XCTAssertEqual(result, 200)
    }
    
    func testDiv(){
        let result = calc.div(a: 10, b: 20)
        XCTAssertEqual(result, 0.5)
    }
}
