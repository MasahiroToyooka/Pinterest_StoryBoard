//
//  DetailTransition.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/30.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

class DetailTransition: NSObject {
    
    private let duration: TimeInterval = 0.28
    
    var presenting: Bool = true
    
    var originFrame: CGRect = CGRect.zero
    var originImage: UIImage = UIImage()
}


extension DetailTransition: UIViewControllerAnimatedTransitioning {
  
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from) else { return }
        
        guard let toView = transitionContext.view(forKey: UITransitionContextViewKey.to) else { return }
        
        let container = transitionContext.containerView
    }
}

