//
//  Food.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/30.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

struct Food {
    
    let id: Int
    let name: String
    let englishName: String
    let price: Int
    let rate: Float
    let imageFile: UIImage?
    
    init(id: Int, name: String, englishName: String, price: Int, rate: Float, imageName: String) {
        
        self.id = id
        self.name = name
        self.englishName = englishName
        self.price = price
        self.rate = rate
        self.imageFile = UIImage(named: imageName)
    }
    
}
