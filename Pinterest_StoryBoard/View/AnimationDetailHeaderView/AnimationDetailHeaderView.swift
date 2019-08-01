//
//  AnimationDetailHeaderView.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/31.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

class AnimationDetailHeaderView: CustomBaseView {
   
    
    @IBOutlet weak var headerBackgroundView: UIView!
    
    @IBOutlet weak var headerTitle: UILabel!
    
    @IBOutlet weak var headerBackButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
