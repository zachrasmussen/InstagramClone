//
//  DeveloperPreview.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/15/23.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let comment = Comment(postOwnerUid: "123", commentText: "Test comment for now", postId: "3214", timestamp: Timestamp(), commentOwnerUid: "1234")
}
