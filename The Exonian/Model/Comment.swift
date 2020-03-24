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
    
    init(name : String , date : String , content : String, like : Int, id : String) {
        self.ref = nil
        self.name = name
        self.date = date
        self.content = content
        self.like = like
        self.id = id
    }
    
    
    init?(snapshot:DataSnapshot) {
        print("hi")
        guard
            let value = snapshot.value as? [String:AnyObject],
            let fName = value["Author"] as? String,
            let fDate = value["Date"] as? String,
            let fContent = value["Content"] as? String,
            let fLike = value["Like"] as? Int,
            let fId = value["Id"] as? String
            else{
                print("wowk")
                return nil
        }
        
        self.ref = snapshot.ref
        self.name = fName
        self.date = fDate
        self.content = fContent
        self.like = fLike
        self.id = fId
        
          print("wow")
    }
    
    func toAnyObject() -> Any{
        return[
            "Name" : name,
            "Date" : date,
            "Content" : content,
            "Like" : like,
            "Id" : id
        ]
    }
}
