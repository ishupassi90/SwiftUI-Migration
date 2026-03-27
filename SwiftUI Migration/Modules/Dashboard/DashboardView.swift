//
//  DashboardView.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject private var viewModel = DashboardViewModel()
    @State private var showUIKitScreen = false
    
    var body: some View {
        VStack {
            
            Toggle("Show UIKit Screen", isOn: $showUIKitScreen)
                .padding()
            
            if showUIKitScreen {
                LegacyDashboardWrapper()
            } else {
                contentView
            }
        }
        .navigationTitle("Dashboard")
        .onAppear {
            viewModel.fetchExpenses()
        }
    }
    
    var contentView: some View {
        Group {
            if viewModel.isLoading {
                ProgressView()
            } else {
                List(viewModel.expenses) { expense in
                    HStack {
                        Text(expense.title)
                        Spacer()
                        Text("₹\(expense.amount, specifier: "%.2f")")
                    }
                }
                .refreshable {
                    viewModel.fetchExpenses()
                }
            }
        }
    }
}
