//
//  Model.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import Foundation

struct Expense: Identifiable, Codable {
    let id: UUID
    let title: String
    let amount: Double
    let date: Date
}
