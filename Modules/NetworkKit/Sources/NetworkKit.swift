//
//  NetworkKit.swift
//  TuistApp
//
//  Created by Abdulkerim Can on 4.09.2024.
//

import Foundation

public class NetworkManager {
    private init() {
        
    }
    
    public static let shared = NetworkManager()
    
     public func fetchHome(completion: @escaping (String) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            completion("Fetched Data")
        }
    }
}
