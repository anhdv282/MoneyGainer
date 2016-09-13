//
//  NormalTransactionTableViewCell.swift
//  MoneyGainer
//
//  Created by mac on 9/13/16.
//  Copyright © 2016 VietAnh. All rights reserved.
//

import UIKit

class NormalTransactionTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var contentLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
