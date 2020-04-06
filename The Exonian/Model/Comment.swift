//
//  Article.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/23/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import Foundation
import Firebase

class Comment {
    
    let ref : DatabaseReference?
    var name : String = ""
    var date : String = ""
    var content : String = ""
    var like : Int = 0
    var id : String = ""
    var commentId : Int = 0
    var likedBy : String = ""
    
    init(commentId : Int, name : String , date : String , content : String, like : Int, id : String, likedBy : String) {
        self.ref = nil
        self.commentId = commentId
        self.name = name
        self.date = date
        self.content = content
        self.like = like
        self.id = id
        self.likedBy = likedBy
    }
    
    
    init?(snapshot:DataSnapshot) {
        guard
            let value = snapshot.value as? [String:AnyObject],
            let fCommentId = value["CommentId"] as? Int,
            let fName = value["Author"] as? String,
            let fDate = value["Date"] as? String,
            let fContent = value["Content"] as? String,
            let fLike = value["Like"] as? Int,
            let fId = value["Id"] as? String,
            let fLikedBy = value["Liked By"] as? String
            else{
                return nil
        }
        
        self.ref = snapshot.ref
        self.commentId = fCommentId
        self.name = fName
        self.date = fDate
        self.content = fContent
        self.like = fLike
        self.id = fId
        self.likedBy = fLikedBy
    }
    
    func toAnyObject() -> Any{
        return[
            "CommentId" : commentId,
            "Name" : name,
            "Date" : date,
            "Content" : content,
            "Like" : like,
            "Id" : id,
            "Liked By" : likedBy
        ]
    }
}
