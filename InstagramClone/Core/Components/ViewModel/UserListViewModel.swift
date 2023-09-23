//
//  UserListViewModel.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/23/23.
//

import Foundation

class UserListViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
