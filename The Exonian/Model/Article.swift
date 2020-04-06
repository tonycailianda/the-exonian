//
//  Article.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/23/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import Foundation
import Firebase

class Article: NSObject, NSCoding {
    
    
    
    let ref : DatabaseReference?
    var author : String = ""
    var date : String = ""
    var title : String = ""
    var catalog : String = ""
    var content : String = ""
    var like : Int = 0
    var imageURL : String = ""
    var id : String = ""
    
    init(author : String , date : String , title : String , catalog : String, content : String, like : Int, imageURL : String, id : String) {
        self.ref = nil
        self.author = author
        self.date = date
        self.title = title
        self.catalog = catalog
        self.content = content
        self.like = like
        self.imageURL = imageURL
        self.id = id
    }
    
    
    init?(snapshot:DataSnapshot) {
        guard
            let value = snapshot.value as? [String:AnyObject],
            let fAuthor = value["Author"] as? String,
            let fDate = value["Date"] as? String,
            let fTitle = value["Title"] as? String,
            let fCatalog = value["Catalog"] as? String,
            let fContent = value["Content"] as? String,
            let fImage = value["ImageURL"] as? String,
            let fId = value["Id"] as? String
            else{
                return nil
        }
        
        self.ref = snapshot.ref
        self.author = fAuthor
        self.date = fDate
        self.title = fTitle
        self.catalog = fCatalog
        self.content = fContent
        self.imageURL = fImage
        self.id = fId
    }
    func encode(with coder: NSCoder) {
        coder.encode(self.author, forKey: "author")
        coder.encode(self.date, forKey: "date")
        coder.encode(self.title, forKey: "title")
        coder.encode(self.catalog, forKey: "catalog")
        coder.encode(self.content, forKey: "content")
        coder.encode(self.like, forKey: "like")
        coder.encode(self.imageURL, forKey: "imageURL")
        coder.encode(self.id, forKey: "id")
    }
    
    required convenience init?(coder decoder: NSCoder) {
        guard let author = decoder.decodeObject(forKey: "author") as? String,
            let date = decoder.decodeObject(forKey: "date") as? String,
            let title = decoder.decodeObject(forKey: "title") as? String,
            let catalog = decoder.decodeObject(forKey: "catalog") as? String,
            let content = decoder.decodeObject(forKey: "content") as? String,
            let like = decoder.decodeInteger(forKey: "like") as? Int,
            let imageURL = decoder.decodeObject(forKey: "imageURL") as? String,
            let id = decoder.decodeObject(forKey: "id") as? String
            else { return nil }
        
        self.init(
            author : author ,
            date : date ,
            title : title ,
            catalog : catalog,
            content : content,
            like : like,
            imageURL : imageURL,
            id : id
        )
    }
    func toAnyObject() -> Any{
        return[
            "Author" : author,
            "Date" : date,
            "Title" : title,
            "Catalog" : catalog,
            "Content" : content,
            "Like" : like,
            "ImageURL" : imageURL,
            "Id" : id
        ]
    }
}

