//
//  AppContainer.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

class AppContainer {
    
    static let shared = AppContainer()
    
    lazy var expenseRepository: ExpenseRepository = {
        RepositoryImplementation()
    }()
}
