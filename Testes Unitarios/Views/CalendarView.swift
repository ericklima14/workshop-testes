//
//  CalendarView.swift
//  Testes Unitarios
//
//  Created by AppleAcademy3 on 19/05/25.
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
