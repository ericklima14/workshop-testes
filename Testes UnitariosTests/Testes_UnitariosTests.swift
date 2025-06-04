//
//  Testes_UnitariosTests.swift
//  Testes UnitariosTests
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import XCTest
@testable import Testes_Unitarios

final class Testes_UnitariosTests: XCTestCase {

    private var calc: Calculadora!
    private var cadastro: Cadastro!
    
    override func setUpWithError() throws {
        calc = Calculadora()
        cadastro = Cadastro()
    }

    override func tearDownWithError() throws {
        calc = nil
        cadastro = nil
    }

    func testSoma(){
        let result = calc.soma(a: 10, b: 20)
        XCTAssertEqual(result, 30)
        print("--- \nO resultado da soma é: \(result)\n---")
    }
    
    func testSub(){
        let result = calc.sub(a: 10, b: 20)
        XCTAssertEqual(result, -10)
        print("--- \nO resultado da subtração é: \(result)\n---")
    }
    
    func testMul(){
        let result = calc.mul(a: 10, b: 20)
        XCTAssertEqual(result, 200)
        print("--- \nO resultado da multiplicação é: \(result)\n---")
    }
    
    func testDiv(){
        let result = calc.div(a: 10, b: 20)
        XCTAssertEqual(result, 0.5)
        print("--- \nO resultado da divisão é: \(result)\n---")
    }
    
    func testExistePessoa(){
        
    }
}
