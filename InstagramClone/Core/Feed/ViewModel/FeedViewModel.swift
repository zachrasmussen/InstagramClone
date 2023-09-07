//
//  FeedViewModel.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/7/23.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchPosts() async throws {
        let snapshot = Firestore.firestore().collection("posts").getDocuments()
    }
}
