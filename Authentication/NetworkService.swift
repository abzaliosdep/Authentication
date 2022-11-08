//
//  NetworkService.swift
//  Authentication
//
//  Created by АБЗАЛ АБЗАЛ on 08.11.2022.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private var user: User?
    
    private init() {}
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "test@test.com" && password == "password" {
                self?.user = User(firstName: "Abzal", lastName: "Bukharbay", email: "test@test.com", age: 24)
                completion(true)
            } else {
                self?.user = nil
                completion(false)
            }
        }
    }
    
    func getLoggedInUser() -> User {
        return user!
    }
}
