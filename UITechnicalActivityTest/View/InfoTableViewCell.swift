//
//  InfoTableViewCell.swift
//  UITechnicalActivityTest
//
//  Created by Tauseef on 7/5/20.
//  Copyright © 2020 Movemedical. All rights reserved.
//

import UIKit

import UIKit

class InfoTableViewCell: UITableViewCell {
    
    @IBOutlet var itemTitleLabel: UILabel!
    
    var section: Int?
    
    var itemInfo: AnyObject? {
        didSet {
            switch section {
            case 0:
                if let itemInfo = itemInfo as? BookInfo {
                    itemTitleLabel.text = itemInfo.name
                }
            case 1:
                if let itemInfo = itemInfo as? PhoneInfo{
                    itemTitleLabel.text = itemInfo.name
                }
            case 2:
                if let itemInfo = itemInfo as? CarInfo {
                    itemTitleLabel.text = itemInfo.name
                }
            default:
                if let itemInfo = itemInfo {
                    itemTitleLabel.text = itemInfo.name
                }
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
