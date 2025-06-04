//
//  CalendarView.swift
//  Testes Unitarios
//
//  Created by Erick Reimberg.
//  Created by Ruan Viana.
//

import SwiftUI

import SwiftUI

struct CalendarView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CalendarViewController {
        return CalendarViewController()
    }

    func updateUIViewController(_ uiViewController: CalendarViewController, context: Context) {}
}

#Preview {
    CalendarView()
}
