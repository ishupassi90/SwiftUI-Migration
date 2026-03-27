//
//  RepositoryImplementation.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import Foundation

class RepositoryImplementation: ExpenseRepository {
    
    func fetchExpenses() async throws -> [Expense] {
        try await Task.sleep(nanoseconds: 1_000_000_000) // simulate API
        
        return [
            Expense(id: UUID(), title: "Food", amount: 200, date: Date()),
            Expense(id: UUID(), title: "Fuel", amount: 1500, date: Date()),
            Expense(id: UUID(), title: "Shopping", amount: 3000, date: Date())
        ]
    }
}
