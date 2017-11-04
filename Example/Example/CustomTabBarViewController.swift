//
//  CustomTabBarViewController.swift
//  Example
//
//  Created by Farhad on 11/1/17.
//  Copyright © 2017 Farhad. All rights reserved.
//

import UIKit
import TabBarBox

class CustomTabBarViewController: TabBarBoxController {

    override func viewDidLoad() {
        super.viewDidLoad()

        homeButton.addTarget(self, action: #selector(didTapAction(_:)), for: .touchUpInside)
    }
    
    func didTapAction(_ sender: Any) {
        // do someThing
    }

}
