//
//  LoginViewModel.swift
//  Authentication
//
//  Created by АБЗАЛ АБЗАЛ on 08.11.2022.
//

import Foundation

final class LoginViewModel {
    var error: ObservableObject<String?> = ObservableObject(nil)
    
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) { [weak self] success in self?.error.value = success ? nil : "Invalid Credentials!!!"
        }
    }
}
