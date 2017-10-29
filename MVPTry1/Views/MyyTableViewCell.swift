//
//  MyyTableViewCell.swift
//  MVPTry
//
//  Created by Admin on 10/28/17.
//  Copyright © 2017 ITI. All rights reserved.
//

import UIKit

class MyyTableViewCell: UITableViewCell {
    //MARK:- OUTLETS
    @IBOutlet weak var dogName: UILabel!
    @IBOutlet weak var dogAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

