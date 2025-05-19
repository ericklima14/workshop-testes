//
//  Testes_UnitariosApp.swift
//  Testes Unitarios
//
//  Created by AppleAcademy1 on 12/05/25.
//

import SwiftUI
import SwiftData

@main
struct Testes_UnitariosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
