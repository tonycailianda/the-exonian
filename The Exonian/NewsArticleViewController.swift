//
//  NewsArticleViewController.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/22/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import UIKit

class NewsArticleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var catalog: UILabel!
    
    @IBOutlet weak var newsTitle: UITextView!
    
    @IBOutlet weak var dateAndAuthor: UILabel!
    
    @IBOutlet weak var content: UITextView!
    
    
    @IBOutlet weak var collect: UIBarButtonItem!
    
    @IBOutlet weak var share: UIBarButtonItem!
    
    @IBOutlet weak var comments: UIBarButtonItem!
    
    
    //Where to put other suggested articles? Like (More in Opinion) also comment section?

}
