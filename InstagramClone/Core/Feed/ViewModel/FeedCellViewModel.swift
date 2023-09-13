//
//  FeedCellViewModel.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/13/23.
//

import Foundation

class FeedCellViewModel: ObservableObject {
    @Published var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    func like() async throws {
        post.didLike = true
    }
    
    func unlike() async throws {
        post.didLike = false
    }
    
    
}
