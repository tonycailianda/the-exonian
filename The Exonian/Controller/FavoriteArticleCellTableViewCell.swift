//
//  favoriteArticleCellTableViewCell.swift
//  The Exonian
//
//  Created by Lianda Cai on 3/23/20.
//  Copyright © 2020 Tony Cai. All rights reserved.
//

import UIKit

class FavoriteArticleCellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var favoriteArticleImage: UIImageView!
    
    
    @IBOutlet weak var favoriteArticleTitle: UITextView!
    
    @IBOutlet weak var favoriteMoreOptions: UIButton!
    
    var indexPath : IndexPath?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
