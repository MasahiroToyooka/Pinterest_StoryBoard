//
//  File.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/30.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit
import FontAwesome_swift

class MainCollectionViewCell: UICollectionViewCell {
    
    static let cellMargin: CGFloat = 1.0
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak private var iconImageView: UIImageView!
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var priceLabel: UILabel!
    @IBOutlet weak private var englishLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func getCellSize() -> CGSize {
        
        let numberOfMargin: CGFloat = 3
        let descriptionHeight: CGFloat = 65.0
        let foodImageAspectRatio: CGFloat = 0.75
        
        let cellWidth = (UIScreen.main.bounds.width - cellMargin * numberOfMargin)/2
        let cellHeight = cellWidth * foodImageAspectRatio + descriptionHeight
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func setCell(_ food: Food) {
        foodImageView.image = food.imageFile
        nameLabel.text = food.name
        priceLabel.text = "お値段: ¥ \(food.price) (一貫)"
        englishLabel.text = "英語名: \(food.englishName)"
    }
    
    private func setupMainCollectionViewCell() {
        iconImageView.image = UIImage.fontAwesomeIcon(name: .fish, style: .solid, textColor: UIColor(code: "#7182ff"), size: CGSize(width: 15, height: 15))
    }
}
