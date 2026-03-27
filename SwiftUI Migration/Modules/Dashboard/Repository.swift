//
//  Repository.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

protocol ExpenseRepository {
    func fetchExpenses() async throws -> [Expense]
}
