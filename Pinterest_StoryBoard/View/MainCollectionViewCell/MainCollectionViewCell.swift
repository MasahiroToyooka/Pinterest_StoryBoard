//
//  File.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/30.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak private var iconImageView: UIImageView!
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var priceLabel: UILabel!
    @IBOutlet weak private var englishLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCell(_ food: Food) {
        foodImageView.image = food.imageFile
        nameLabel.text = food.name
        priceLabel.text = "お値段: ¥ \(food.price) (一貫)"
        englishLabel.text = "英語名: \(food.englishName)"
    }
}
