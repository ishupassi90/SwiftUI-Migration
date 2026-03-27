//
//  APIClient.swift
//  SwiftUI Migration
//
//  Created by Ishu_VaultsPay on 27/03/26.
//

import Foundation

class APIClient {
    
    func request<T: Decodable>(_ url: URL) async throws -> T {
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
