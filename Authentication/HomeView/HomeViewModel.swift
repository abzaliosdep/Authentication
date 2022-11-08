//
//  HomeViewModel.swift
//  Authentication
//
//  Created by АБЗАЛ АБЗАЛ on 08.11.2022.
//

import Foundation

final class HomeViewModel {
    
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
}
