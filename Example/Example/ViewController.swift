//
//  ViewController.swift
//  Example
//
//  Created by Farhad on 10/21/17.
//  Copyright © 2017 Farhad. All rights reserved.
//

import UIKit
import  TabBarBox

class ViewController: TabBarBoxController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeButton.setImage(UIImage(named: "add"), for: .normal)
        
        let buttonCloud = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        buttonCloud.setImage(UIImage(named: "cloud"), for: .normal)
        buttonCloud.setTitleColor(.blue, for: .highlighted)
        addButton(buttonBar: buttonCloud)
        
        let buttonFav = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        buttonFav.setImage(UIImage(named: "fav"), for: .normal)
        buttonFav.setTitleColor(.blue, for: .highlighted)
        addButton(buttonBar: buttonFav)

        addTargetHomeButton {
            print("hi")
        }
    }
}

