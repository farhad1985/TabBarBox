//
//  HomeButton.swift
//  TabBarBox
//
//  Created by Farhad on 10/22/17.
//  Copyright © 2017 Farhad. All rights reserved.
//

import UIKit

open class HomeButton: UIButton {

    var backgroundHomeButton: UIColor = .blue {
        didSet {
            backgroundColor = backgroundHomeButton
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override open var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                backgroundColor = backgroundHomeButton.withAlphaComponent(0.5)
            } else {
                backgroundColor = backgroundHomeButton
            }
        }
    }
}
