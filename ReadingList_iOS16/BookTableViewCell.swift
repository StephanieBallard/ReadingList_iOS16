//
//  BookTableViewCell.swift
//  ReadingList_iOS16
//
//  Created by Stephanie Ballard on 3/23/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func checkMarkButtonTapped(_ sender: UIButton) {
    }
}

