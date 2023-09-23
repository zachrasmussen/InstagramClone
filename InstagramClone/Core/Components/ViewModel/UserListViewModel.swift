//
//  UserListViewModel.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/23/23.
//

import Foundation

@MainActor
class UserListViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        print("DEBUG: did init")
    }
    
    func fetchUsers(forConfig config: UserListConfig) async {
        do {
            self.users = try await UserService.fetchAllUsers()
        } catch {
            print("DEBUG: Failed to fetch users with error \(error.localizedDescription)")
        }
    }
}
