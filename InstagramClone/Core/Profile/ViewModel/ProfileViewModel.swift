//
//  ProfileViewModel.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/18/23.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}

extension ProfileViewModel {
    func follow() {
        user.isFollowed = true
    }
    
    func unfollow() {
        user.isFollowed = false
    }
    
    func checkIfUserIsFollowed() {
        
    }
}
