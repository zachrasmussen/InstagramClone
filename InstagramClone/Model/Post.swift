//
//  Post.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/6/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "The last to leave the pool wins $10,000",
              likes: 105,
              imageUrl: "party-1",
              timestamp: Date(),
              user: User.MOCK_USERS[0]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "In Hawaii doing some of the craziest trickshots you can imagine",
                  likes: 105,
                  imageUrl: "party-2",
                  timestamp: Date(),
                  user: User.MOCK_USERS[1]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Howdy lol",
                  likes: 105,
                  imageUrl: "party-3",
                  timestamp: Date(),
                  user: User.MOCK_USERS[2]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Havasupai, need I say more?",
                  likes: 105,
                  imageUrl: "party-4",
                  timestamp: Date(),
                  user: User.MOCK_USERS[3]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Suns out, funs out!",
                  likes: 105,
                  imageUrl: "party-5",
                  timestamp: Date(),
                  user: User.MOCK_USERS[4]),
    ]
}
