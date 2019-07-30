//
//  NSObjectProtocolExtension.swift
//  Pinterest_StoryBoard
//
//  Created by 豊岡正紘 on 2019/07/30.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

// NSObjectProtocolの拡張
extension NSObjectProtocol {
    
    // クラス名を返す変数"className"を返す
    static var className: String {
        return String(describing: self)
    }
}
