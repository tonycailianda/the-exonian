//
//  TopNewsViewController.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/22/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import UIKit

class TopNewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var topNewsTableView: UITableView!
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
