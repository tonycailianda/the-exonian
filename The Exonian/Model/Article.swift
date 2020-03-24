//
//  Article.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/23/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import Foundation
import Firebase

class Article {
    let ref : DatabaseReference?
    var author : String = ""
    var date : String = ""
    var title : String = ""
    var catalog : String = ""
    var content : String = ""
    var like : Int = 0
    var imageURL : String = ""
    
    init(author : String , date : String , title : String , catalog : String, content : String, like : Int, imageURL : String) {
        self.ref = nil
        self.author = author
        self.date = date
        self.title = title
        self.catalog = catalog
        self.content = content
        self.like = like
        self.imageURL = imageURL
    }
    
    init?(snapshot:DataSnapshot) {
        guard
            let value = snapshot.value as? [String:AnyObject],
            let fAuthor = value["Author"] as? String,
            let fDate = value["Date"] as? String,
            let fTitle = value["Title"] as? String,
            let fCatalog = value["Catalog"] as? String,
            let fContent = value["Content"] as? String,
            let fLike = value["Like"] as? Int,
            let fImageURL = value["imageURL"] as? String else{
                return nil
        }
        self.ref = snapshot.ref
        self.author = fAuthor
        self.date = fDate
        self.title = fTitle
        self.catalog = fCatalog
        self.content = fContent
        self.like = fLike
        self.imageURL = fImageURL
    }
    
    func toAnyObject() -> Any{
        return[
            "Author" : author,
            "Date" : date,
            "Title" : title,
            "Catalog" : catalog,
            "Content" : content,
            "Like" : like,
            "ImageURL" : imageURL
        ]
    }
}
