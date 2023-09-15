//
//  Comment.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/15/23.
//

import Firebase
import FirebaseFirestoreSwift

struct Comment: Identifiable, Codable {
    @DocumentID var commentId: String?
    
    var id: String {
        return commentId ?? NSUUID().uuidString
    }
}
