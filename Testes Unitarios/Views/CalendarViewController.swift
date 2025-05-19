//
//  CalendarViewController.swift
//  Testes Unitarios
//
//  Created by AppleAcademy3 on 19/05/25.
//

import UIKit

class CalendarViewController: UIViewController {
    private let calendarView = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupCalendar()
    }

    private func setupCalendar() {
        calendarView.datePickerMode = .date
        calendarView.preferredDatePickerStyle = .inline
        calendarView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(calendarView)

        NSLayoutConstraint.activate([
            calendarView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calendarView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
}

#Preview {
    CalendarViewController()
}
