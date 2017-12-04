//
//  TableViewCell.swift
//  Remainder
//
//  Created by Aloc SP06447 on 01/12/2017.
//  Copyright © 2017 Aloc SP06447. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var enable: UISwitch!
    
    @IBOutlet weak var orientation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
    
}
