//
//  UserListConfig.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/23/23.
//

import Foundation

enum UserListConfig: Hashable {
    case followers(uid: String)
    case following(uid: String)
    case likes(postId: String)
    case explore
    
    var navigationTitle: String {
        switch self {
        case .followers: return "Followers"
        case .following: return "Following"
        case .likes: return "Likes"
        case .explore: return "Explore"
        }
    }
}
