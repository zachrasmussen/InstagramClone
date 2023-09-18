//
//  Constants.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/18/23.
//

import Firebase

struct FirebaseConstants {
    static let Root = Firestore.firestore()
    
    static let UsersCollection = Root.collection("users")
    
    static let PostCollection = Root.collection("posts")
}
