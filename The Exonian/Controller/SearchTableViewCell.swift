//
//  SearchTableViewCell.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/23/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var searchResultTitle: UILabel!
    
    @IBOutlet weak var searchResultBrief: UITextView!
    
    @IBOutlet weak var searchResultDate: UILabel!
    
    var indexPath : IndexPath!
}
