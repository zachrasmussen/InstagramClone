//
//  UserService.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/6/23.
//

import Foundation
import Firebase

class UserService {
    
    @Published var currentUser: User?

    static let shared = UserService()
    
    @MainActor
    func fetchCurrentUSer() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        self.currentUser = try await FirebaseConstants
            .UsersCollection
            .document(uid)
            .getDocument(as: User.self)
    }
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await FirebaseConstants.UsersCollection.document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await FirebaseConstants.UsersCollection.getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}

// Following

extension UserService {
    static func follow(uid: String) async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        async let _ = try await FirebaseConstants
            .FollowingCollection
            .document(currentUid)
            .collection("user-following")
            .document(uid)
            .setData([:])
        
        async let _ = try await FirebaseConstants
            .FollowersCollection
            .document(uid)
            .collection("user-followers")
            .document(currentUid)
            .setData([:])
    }
    
    static func unfollow(uid: String) async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }

        async let _ = try await FirebaseConstants
            .FollowingCollection
            .document(currentUid)
            .collection("user-following")
            .document(uid)
            .delete()
        
        async let _ = try await FirebaseConstants
            .FollowersCollection
            .document(uid)
            .collection("user-followers")
            .document(currentUid)
            .delete()
    }
    
    static func checkIfUSerIsFollowed(uid: String) async throws -> Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        
        let snapshot = try await FirebaseConstants
            .FollowingCollection
            .document(currentUid)
            .collection("user-following")
            .document(uid)
            .getDocument()
        
        return snapshot.exists
    }
}

// User Stats

extension UserService {
    static func fetchUserStats(uid: String) async throws -> UserStats {
        async let followingSnapshot = try await FirebaseConstants
            .FollowingCollection
            .document(uid)
            .collection("user-following")
            .getDocuments()
        
        let followingCount = try await followingSnapshot.count
        
        async let followersSnapshot = try await FirebaseConstants
            .FollowersCollection
            .document(uid)
            .collection("user-followers")
            .getDocuments()
        
        let followerCount = try await followersSnapshot.count
        
        async let postSnapshot = try await FirebaseConstants
            .PostCollection
            .whereField("ownerUid", isEqualTo: uid)
            .getDocuments()
        
        let postsCount = try await postSnapshot.count
        
        print("DEBUG: Did call fetch user stats")
        return .init(followingCount: followingCount, followersCount: followerCount, postsCount: postsCount)
    }
}
