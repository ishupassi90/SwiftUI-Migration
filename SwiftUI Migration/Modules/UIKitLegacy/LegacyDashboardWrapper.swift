//
//  LegacyDashboardWrapper.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import SwiftUI

struct LegacyDashboardWrapper: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        return DashboardVC()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
