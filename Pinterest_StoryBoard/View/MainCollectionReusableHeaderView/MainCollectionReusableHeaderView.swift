//
//  MainCollectionReusableHeaderView.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/31.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

class MainCollectionReusableHeaderView: UICollectionReusableView {
    
    static let viewSize: CGSize = CGSize(width: UIScreen.main.bounds.width, height: 64.0)
    
    var newsButtonTappedHandler: (() -> ())?
    
    @IBOutlet weak var newsContentsButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupMainCollectionReusableHeaderView()
    }
    
    @objc func newsContentsButtonTapped(_ sender: UIButton) {
        newsButtonTappedHandler?()
    }
    
    private func setupMainCollectionReusableHeaderView() {
        newsContentsButton.layer.masksToBounds = true
        newsContentsButton.layer.cornerRadius = 5.0
        newsContentsButton.layer.borderColor   = UIColor(code: "#fd7f01").cgColor
        
        newsContentsButton.addTarget(self, action: #selector(newsContentsButtonTapped), for: .touchUpInside)
    }
}
