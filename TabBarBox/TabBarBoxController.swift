//
//  TabBarBoxController.swift
//  TabBarBox
//
//  Created by Farhad on 10/21/17.
//  Copyright © 2017 Farhad. All rights reserved.
//

import UIKit

open class TabBarBoxController: UIViewController {
    
    typealias Lisener = () -> Void
    
    public var container = UIView()
    public var homeButton = HomeButton()
    var viewControllers: [UIViewController] = []
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
        
        container.backgroundColor = UIColor.lightGray
        self.view.addSubview(container)
        
        // backCircle
        backCircle.layer.cornerRadius = widthCircleHome / 2
        backCircle.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.5).cgColor
        backCircle.layer.borderWidth = 1
        backCircle.backgroundColor = .white
        self.view.addSubview(backCircle)
        
        // BarView
        barView.backgroundColor = .white
        barView.layer.borderWidth = 1
        barView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.5).cgColor
        view.addSubview(barView)
        
        // inFrontCircle
        inFrontCircle.layer.cornerRadius = widthCircleHome / 2
        inFrontCircle.backgroundColor = .white
        view.addSubview(inFrontCircle)
        
        // HomeButton
        homeButton.layer.cornerRadius = (widthCircleHome - 4) / 2
        homeButton.backgroundColor = .blue
        inFrontCircle.addSubview(homeButton)
        homeButton.backgroundHomeButton = UIColor(red: 43/255, green: 107/255, blue: 213/255, alpha: 1.0)
        
        // Stack Left
        stackLeft.alignment = .center
        stackLeft.axis = .horizontal
        stackLeft.distribution = .fillEqually
        barView.addSubview(stackLeft)
        
        // Stack Right
        stackRight.alignment = .center
        stackRight.axis = .horizontal
        stackRight.distribution = .fillEqually
        barView.addSubview(stackRight)
    }
    
    override open func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Container
        container.translatesAutoresizingMaskIntoConstraints = false
        container.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        container.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        container.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -hieghtBar).isActive = true
        
        // barView
        barView.translatesAutoresizingMaskIntoConstraints = false
        barView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: -1).isActive = true
        barView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 1).isActive = true
        barView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -1).isActive = true
        barView.heightAnchor.constraint(equalToConstant: hieghtBar).isActive = true
        
        // back Circle
        backCircle.translatesAutoresizingMaskIntoConstraints = false
        backCircle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        backCircle.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -3).isActive = true
        backCircle.widthAnchor.constraint(equalToConstant: widthCircleHome).isActive = true
        backCircle.heightAnchor.constraint(equalToConstant: widthCircleHome).isActive = true
        
        // In Front Circle
        inFrontCircle.translatesAutoresizingMaskIntoConstraints = false
        inFrontCircle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        inFrontCircle.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -3).isActive = true
        inFrontCircle.widthAnchor.constraint(equalToConstant: widthCircleHome - 1).isActive = true
        inFrontCircle.heightAnchor.constraint(equalToConstant: widthCircleHome - 1).isActive = true
        
        // Home Button
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        homeButton.centerXAnchor.constraint(equalTo: self.inFrontCircle.centerXAnchor).isActive = true
        homeButton.centerYAnchor.constraint(equalTo: self.inFrontCircle.centerYAnchor).isActive = true
        homeButton.widthAnchor.constraint(equalToConstant: widthCircleHome - 8).isActive = true
        homeButton.heightAnchor.constraint(equalToConstant: widthCircleHome - 8).isActive = true
        
        // Stack Left
        stackLeft.translatesAutoresizingMaskIntoConstraints = false
        stackLeft.leftAnchor.constraint(equalTo: barView.leftAnchor).isActive = true
        stackLeft.rightAnchor.constraint(equalTo: inFrontCircle.leftAnchor).isActive = true
        stackLeft.topAnchor.constraint(equalTo: barView.topAnchor).isActive = true
        stackLeft.bottomAnchor.constraint(equalTo: barView.bottomAnchor).isActive = true
        
        // Stack Right
        stackRight.translatesAutoresizingMaskIntoConstraints = false
        stackRight.leftAnchor.constraint(equalTo: inFrontCircle.rightAnchor).isActive = true
        stackRight.rightAnchor.constraint(equalTo: barView.rightAnchor).isActive = true
        stackRight.topAnchor.constraint(equalTo: barView.topAnchor).isActive = true
        stackRight.bottomAnchor.constraint(equalTo: barView.bottomAnchor).isActive = true
        
    }
    
    open func addButton(buttonBars: UIButton...) {
        for buttonBar in buttonBars {
            buttonBar.imageView?.contentMode = .scaleAspectFit
            if isLeft {
                stackLeft.addArrangedSubview(buttonBar)
                isLeft = false
            } else {
                stackRight.addArrangedSubview(buttonBar)
                isLeft = true
            }
        }
    }
    
    open func addTargetHomeButton(handler: (() -> Void)?) {
        lisener = handler
        homeButton.addTarget(self, action: #selector(didTapHomeButton(_:)), for: .touchUpInside)
    }
    
    @objc func didTapHomeButton(_ sender: Any) {
        lisener?()
    }
    
    open func selectedTab(at index: Int) {
        for i in container.subviews {
            i.removeFromSuperview()
        }
        guard let vcView = viewControllers[index].view else { return }
        container.addSubview(vcView)
        vcView.translatesAutoresizingMaskIntoConstraints = false
        
        vcView.leftAnchor.constraint(equalTo: self.container.leftAnchor).isActive = true
        vcView.rightAnchor.constraint(equalTo: self.container.rightAnchor).isActive = true
        vcView.topAnchor.constraint(equalTo: self.container.topAnchor).isActive = true
        vcView.bottomAnchor.constraint(equalTo: self.container.bottomAnchor).isActive = true
    }
    
    open func addViewControllers(viewController: UIViewController...) {
        viewControllers.append(contentsOf: viewController)
    }
}
