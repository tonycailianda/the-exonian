//
//  FavoriteViewController.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/22/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var favoriteArticles: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         }
    
    @IBOutlet weak var favoriteTable: UITableView!
    
    
}
