//
//  User.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/5/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString,
              username: "mrbeast",
              profileImageUrl: nil,
              fullname: "Mr Beast",
              bio: "I make YouTube Videos",
              email: "mrbeast@gmail.com"),
        
        .init(id: NSUUID().uuidString,
              username: "dudeperfect",
              profileImageUrl: nil,
              fullname: "Dude Perfect",
              bio: "We make trick shots look easy",
              email: "dudeperfect@gmail.com"),
        
        .init(id: NSUUID().uuidString,
              username: "ryan",
              profileImageUrl: nil,
              fullname: "Ryan Trahan",
              bio: "When I say penny, you say series",
              email: "ryan@gmail.com"),
        
        .init(id: NSUUID().uuidString,
              username: "casey",
              profileImageUrl: nil,
              fullname: "Casey Neistat",
              bio: "Yo",
              email: "casey@gmail.com"),
        
        .init(id: NSUUID().uuidString,
              username: "rassybassy",
              profileImageUrl: nil,
              fullname: "Zach Rasmussen",
              bio: "obsessed with: Apple | Pickleball | YouTube",
              email: "zsrasmussen@gmail.com"),
    ]
}
