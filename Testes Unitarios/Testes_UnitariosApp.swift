//
//  Testes_UnitariosApp.swift
//  Testes Unitarios
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import SwiftUI
import SwiftData

@main
struct Testes_UnitariosApp: App {
    @Environment(\.modelContext) private var modelContext
    
    var body: some Scene {
        WindowGroup {
            ContentView(repository: resolveRepository())
        }
    }
    
    func resolveRepository() -> TaskRepositoryProtocol {
        if ProcessInfo.processInfo.arguments.contains("UI_TESTING") {
            let mock = MockTaskRepository()
            mock.tasks = []
            return mock
        }
        
        return TaskRepository(context: modelContext)
    }
}


