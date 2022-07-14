//
//  PostTableViewCell.swift
//  InstaClone
//
//  Created by Karimov Dilmurod on 14/07/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var postImageView1: UIImageView!
    @IBOutlet weak var postImageView2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
