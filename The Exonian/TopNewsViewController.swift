//
//  TopNewsViewController.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/22/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import UIKit
import Firebase

class TopNewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var articles : [Article] = []
    var ref : DatabaseReference = DatabaseReference.init()
    @IBOutlet weak var topNewsTableView: UITableView!
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = topNewsTableView.dequeueReusableCell(withIdentifier: "topNewsCell", for: indexPath) as! TopNewsCell
    let article = articles[indexPath.section]
    cell.topNewsText.text = article.title
    
    cell.indexPath = indexPath
    return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        ref = Database.database().reference()
        ref.child("News").queryOrdered(byChild: "Date").observe(.value, with: { snapshot in
            var newArticle: [Article] = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                    let articleItem = Article(snapshot: snapshot) {
                    newArticle.append(articleItem)
                }
            }
            self.articles = newArticle
            self.topNewsTableView.reloadData()

         })
 
    }
    


}
