//
//  User.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/5/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "mrbeast", profileImageUrl: "party-1", fullname: "Mr Beast", bio: "I make YouTube Videos", email: "mrbeast@gmail.com"),
        .init(id: NSUUID().uuidString, username: "dudeperfect", profileImageUrl: "party-2", fullname: "Dude Perfect", bio: "We make trick shots look easy", email: "dudeperfect@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ryan", profileImageUrl: "party-3", fullname: "Ryan Trahan", bio: "When I say penny, you say series", email: "ryan@gmail.com"),
        .init(id: NSUUID().uuidString, username: "casey", profileImageUrl: "party-4", fullname: "Casey Neistat", bio: "Yo", email: "casey@gmail.com"),
        .init(id: NSUUID().uuidString, username: "rassybassy", profileImageUrl: "party-5", fullname: "Zach Rasmussen", bio: "obsessed with: Apple | Pickleball | YouTube", email: "zsrasmussen@gmail.com"),
    ]
}
