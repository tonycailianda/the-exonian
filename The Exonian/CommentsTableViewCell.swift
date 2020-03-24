//
//  CommentsTableViewCell.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/23/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import UIKit

class CommentsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var commentUsername: UILabel!
    
    @IBOutlet weak var commentContent: UITextView!
    
    @IBOutlet weak var commentDate: UILabel!
    
    @IBOutlet weak var likeCount: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
