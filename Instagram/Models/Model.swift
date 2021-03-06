//
//  Model.swift
//  Instagram
//
//  Created by saw Tarmalar on 29/09/2020.
//  Copyright © 2020 saw Tarmalar. All rights reserved.
//

import Foundation

public enum UserPostType{
    case photo, video
}

enum Gender {
    case male, female, other
}

struct User {
    let username : String
    let bio : String
    let name: (first: String, last: String)
    let birthDate : Date
    let gender : Gender
    let counts : UserCount
    let joinDate : Date
}

struct UserCount {
    let followers: Int
    let following : Int
    let posts : Int
}

/// Represent a user Post
public struct UserPost{
    let identifier : String
    let postType: UserPostType
    let thumbnailImage : URL
    let postURL : URL //either video url or full resolution photo
    let caption : String?
    let likecount: [PostLikes]
    let comments: [PostComment]
    let createdDate : Date
    let taggedUsers: [String]
}

struct PostLikes {
    let username : String
    let postIdentifier : String
}

struct CommentLike {
    let username : String
    let commentIdentifier : String
}

struct PostComment {
    let identifier : String
    let username : String
    let text : String
    let createdDate : Date
    let likes : [CommentLike]
}
