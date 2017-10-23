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
        buttonCloud.addTarget(self, action: #selector(didTapButtonCloud(_:)), for: .touchUpInside)
        addButton(buttonBar: buttonCloud)
        
        let buttonFav = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        buttonFav.setImage(UIImage(named: "fav"), for: .normal)
        buttonFav.setTitleColor(.blue, for: .highlighted)
        buttonFav.addTarget(self, action: #selector(didTapButtonFav(_:)), for: .touchUpInside)
        addButton(buttonBar: buttonFav)
        
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let second = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        addViewControllers(viewController: mainVC, second)
        
        
        addTargetHomeButton {
            print("hi")
        }
    }
    
    @objc func didTapButtonCloud(_ sender: Any) {
        selectedTab(at: 0)
    }
    
    @objc func didTapButtonFav(_ sender: Any) {
        selectedTab(at: 1)
    }
}

