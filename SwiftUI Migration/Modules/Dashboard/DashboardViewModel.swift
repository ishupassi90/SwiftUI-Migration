//
//  DashboardViewModel.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import Foundation
import Combine

class DashboardViewModel: ObservableObject {
    
    @Published var expenses: [Expense] = []
    @Published var isLoading: Bool = false
    
    private let repository: ExpenseRepository
    private var cancellables = Set<AnyCancellable>()
    
    init(repository: RepositoryImplementation = RepositoryImplementation()) {
        self.repository = repository
    }
    
    func fetchExpenses() {
        isLoading = true
        
        Task {
            do {
                let data = try await repository.fetchExpenses()
                await MainActor.run {
                    self.expenses = data
                    self.isLoading = false
                }
            } catch {
                print(error)
                isLoading = false
            }
        }
    }
}
