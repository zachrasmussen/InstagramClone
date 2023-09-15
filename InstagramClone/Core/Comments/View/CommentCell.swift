//
//  CommentCell.swift
//  InstagramClone
//
//  Created by Zachary Rasmussen on 9/14/23.
//

import SwiftUI

struct CommentCell: View {
    
    private var user: User {
        return User.MOCK_USERS[0]
    }
    
    var body: some View {
        HStack {
            CircularProfileImageView(user: User.MOCK_USERS[0], size: .xSmall)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 2) {
                    Text(user.username)
                        .fontWeight(.semibold)
                    
                    Text("6d")
                        .foregroundColor(.gray)
                }
                
                Text("How does the back of my car look?")
            }
            .font(.caption)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct CommentCell_Previews: PreviewProvider {
    static var previews: some View {
        CommentCell()
    }
}
