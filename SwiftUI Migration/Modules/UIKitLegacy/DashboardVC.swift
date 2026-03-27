//
//  DashboardVC.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import UIKit

class DashboardVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "UIKit Dashboard"
        label.textAlignment = .center
        label.frame = view.bounds
        
        view.addSubview(label)
    }
}
