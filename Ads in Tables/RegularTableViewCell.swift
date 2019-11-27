//
//  RegularTableViewCell.swift
//  Ads in Tables
//
//  Created by Steven Berard on 11/26/19.
//  Copyright © 2019 Steven Berard. All rights reserved.
//

import UIKit

class RegularTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
