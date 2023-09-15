//
//  CommentService.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/15/23.
//

import FirebaseFirestoreSwift
import Firebase

struct CommentService {
    
    static func uploadComment(_ comment: Comment, postId: String) async throws {
        guard let commentData = try? Firestore.Encoder().encode(comment) else { return }
        
        try await Firestore
            .firestore()
            .collection("posts")
            .document(postId)
            .collection("post-comments")
            .addDocument(data: commentData)
    }
}
