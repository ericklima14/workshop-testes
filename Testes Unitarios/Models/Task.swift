//
//  Task.swift
//  Testes Unitarios
//
//  Created by AppleAcademy3 on 19/05/25.
//

import Foundation
import SwiftData

@Model
class Task {
    var title: String
    var details: String
    var date: Date
    var isCompleted: Bool

    init(title: String, details: String, date: Date, isCompleted: Bool = false) {
        self.title = title
        self.details = details
        self.date = date
        self.isCompleted = isCompleted
    }
}
