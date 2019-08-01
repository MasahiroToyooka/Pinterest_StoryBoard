//
//  CustomBaseView.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/30.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

class CustomBaseView: UIView {
    
    weak var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initContentView()
    }
    
    
    private func initContentView() {
        
        let viewClass: AnyClass = type(of: self)
        
        contentView = UINib(nibName: String(describing: viewClass), bundle: Bundle(for: viewClass)).instantiate(withOwner: self, options: nil).first as? UIView
        contentView.autoresizingMask = autoresizingMask
        contentView.frame = bounds
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: self.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    
}
