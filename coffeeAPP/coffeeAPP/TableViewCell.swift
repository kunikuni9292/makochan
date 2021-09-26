//
//  TableViewCell.swift
//  coffeeAPP
//
//  Created by 崎原邦達 on 2021/09/25.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var taitleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet var goriraimage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(titleText: String, detailText: String, image: UIImage){
        self.taitleLabel.text = titleText
        self.detailLabel.text = detailText
        self.goriraimage.image = image
    }
    
    
}
