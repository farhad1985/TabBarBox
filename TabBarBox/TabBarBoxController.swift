//
//  TabBarBoxController.swift
//  TabBarBox
//
//  Created by Farhad on 10/21/17.
//  Copyright © 2017 Farhad. All rights reserved.
//

import UIKit

open class TabBarBoxController: UITabBarController {
    
    typealias Lisener = () -> Void
    
    public var container = UIView()
    public var homeButton = HomeButton()
    let backCircle = UIView()
    let inFrontCircle = UIView()
    var barView = UIView()
    var widthCircleHome: CGFloat = 66
    var hieghtBar: CGFloat = 50
    var stackLeft = UIStackView()
    var stackRight = UIStackView()
    var backgroundColorHomeButton = UIColor()
    private var isLeft = true
    private var lisener: Lisener?
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        
        // backCircle
        backCircle.layer.cornerRadius = widthCircleHome / 2
        backCircle.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.5).cgColor
        backCircle.layer.borderWidth = 1
        backCircle.backgroundColor = .white
        tabBar.addSubview(backCircle)

        // inFrontCircle
        inFrontCircle.backgroundColor = .white
        tabBar.addSubview(inFrontCircle)

        // HomeButton
        homeButton.layer.cornerRadius = (widthCircleHome - 8) / 2
        homeButton.backgroundColor = .blue
        tabBar.addSubview(homeButton)
        homeButton.backgroundHomeButton = UIColor(red: 43/255, green: 107/255, blue: 213/255, alpha: 1.0)
    }
    
    override open func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        // back Circle
        backCircle.translatesAutoresizingMaskIntoConstraints = false
        backCircle.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor).isActive = true
        backCircle.bottomAnchor.constraint(equalTo: tabBar.bottomAnchor).isActive = true
        backCircle.widthAnchor.constraint(equalToConstant: widthCircleHome).isActive = true
        backCircle.heightAnchor.constraint(equalToConstant: widthCircleHome).isActive = true

        // In Front Circle
        inFrontCircle.translatesAutoresizingMaskIntoConstraints = false
        inFrontCircle.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor).isActive = true
        inFrontCircle.bottomAnchor.constraint(equalTo: tabBar.bottomAnchor, constant: 0).isActive = true
        inFrontCircle.widthAnchor.constraint(equalToConstant: widthCircleHome ).isActive = true
        inFrontCircle.heightAnchor.constraint(equalToConstant: widthCircleHome ).isActive = true
        inFrontCircle.topAnchor.constraint(equalTo: tabBar.topAnchor).isActive = true


        // Home Button
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        homeButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor).isActive = true
        homeButton.centerYAnchor.constraint(equalTo: tabBar.centerYAnchor, constant: -10).isActive = true
        homeButton.widthAnchor.constraint(equalToConstant: widthCircleHome - 8).isActive = true
        homeButton.heightAnchor.constraint(equalToConstant: widthCircleHome - 8).isActive = true
    }

}
