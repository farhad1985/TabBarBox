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
        
        let buttonCloud = UIButton()
        buttonCloud.setImage(UIImage(named: "cloud"), for: .normal)
        buttonCloud.addTarget(self, action: #selector(didTapButtonCloud(_:)), for: .touchUpInside)
        
        let buttonFav = UIButton()
        buttonFav.setImage(UIImage(named: "fav"), for: .normal)
        buttonFav.addTarget(self, action: #selector(didTapButtonFav(_:)), for: .touchUpInside)
        
        addButton(buttonBars: buttonCloud, buttonFav)
        
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let second = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        addViewControllers(viewController: mainVC, second)
        selectedTab(at: 0)
        
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

