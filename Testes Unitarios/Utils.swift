//
//  Utils.swift
//  Testes Unitarios
//
//  Created by AppleAcademy1 on 03/06/25.
//

import Foundation

func isRunningUITests() -> Bool {
    ProcessInfo.processInfo.arguments.contains("UI-TESTING")
}
