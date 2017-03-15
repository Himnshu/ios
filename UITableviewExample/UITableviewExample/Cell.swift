//
//  Cell.swift
//  UITableviewExample
//
//  Created by osx on 15/03/17.
//  Copyright © 2017 com.domain.UITableviewExample. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet var mName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
