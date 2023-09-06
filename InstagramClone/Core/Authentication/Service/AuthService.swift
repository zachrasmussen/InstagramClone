//
//  AuthService.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/6/23.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email:String, password: String, username: String) async throws {
        print("Email is \(email)")
        print("Password is \(password)")
        print("Username is \(username)")
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
}
