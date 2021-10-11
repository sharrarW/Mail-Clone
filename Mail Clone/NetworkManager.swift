//
//  NetworkManager.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/11/21.
//

import Foundation

struct NetworkManager {
    private static var baseUrl = "https://justncode.com/"
    
    enum Endpoint: String {
        case mailMessages = "json/email.json"
    }
    
    private static func urlString(for endPoint:Endpoint) -> String {
        return baseUrl + endPoint.rawValue
    }
    
    static func fetchMailMessages() {
        if let url = URL(string: urlString(for: .mailMessages)) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    let mail = try? JSONDecoder().decode(Mail.self, from: data)
                    print("messages", mail?.messages ?? [])
                }
            }.resume()
        } 
    }
}