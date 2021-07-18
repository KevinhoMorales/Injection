//
//  HomeTableViewCell.swift
//  Injection
//
//  Created by Kevinho Morales on 17/7/21.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUpCell(homeModel: HomeModel) {
        nameLabel.text = homeModel.name
    }
    
}
