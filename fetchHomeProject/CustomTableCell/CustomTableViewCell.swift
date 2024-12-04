//
//  CustomTableViewCell.swift
//  fetchHomeProject
//
//  Created by Sohagia Yash on 12/3/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var website: UILabel!
    @IBOutlet weak var cusinie: UILabel!
    @IBOutlet weak var youtube: UILabel!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
