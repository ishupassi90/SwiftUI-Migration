//
//  ContentView.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
//    func openSwiftUIScreen() {
//        let swiftUIView = DashboardView()
//        let vc = UIHostingController(rootView: swiftUIView)
//        navigationController?.pushViewController(vc, animated: true)
//    }
}

#Preview {
    ContentView()
}
