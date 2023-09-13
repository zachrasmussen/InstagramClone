//
//  Post.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/6/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
    
    var didLike: Bool? = false
}

extension Post {
    static let MOCK_IMAGE_URL = "https://firebasestorage.googleapis.com:443/v0/b/bubbleswiftui-8ad2d.appspot.com/o/profile_images%2FE58CCEC3-F8FE-4918-B99C-9F4CA3E799AC?alt=media&token=91007aaf-63e6-41a5-acfb-46531a2bd75f"
    
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "The last to leave the pool wins $10,000",
              likes: 105,
              imageUrl: "party-1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "In Hawaii doing some of the craziest trickshots you can imagine",
                  likes: 105,
                  imageUrl: "party-2",
                  timestamp: Timestamp(),
                  user: User.MOCK_USERS[1]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Howdy lol",
                  likes: 105,
                  imageUrl: "party-3",
                  timestamp: Timestamp(),
                  user: User.MOCK_USERS[2]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Havasupai, need I say more?",
                  likes: 105,
                  imageUrl: "party-4",
                  timestamp: Timestamp(),
                  user: User.MOCK_USERS[3]),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Suns out, funs out!",
                  likes: 105,
                  imageUrl: "party-5",
                  timestamp: Timestamp(),
                  user: User.MOCK_USERS[4]),
    ]
}
