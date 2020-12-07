//
//  MyTabBarController.swift
//  tabbarDemo
//
//  Created by Mutter on 04/12/20.
//  Copyright © 2020 Mutter. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCenterButton()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tabBar.frame.size.height = 60
        tabBar.frame.origin.y = view.frame.height - 60
    }
    
    //MARK: Add button
    func setupCenterButton() {

        let middleBtn = UIButton(frame: CGRect(x: (self.view.bounds.width / 2)-23, y: -18, width: 46, height: 46))
        
        middleBtn.backgroundColor = UIColor.blue
        middleBtn.layer.cornerRadius = middleBtn.frame.size.height / 2
        
        //add to the tabbar and add click event
        self.tabBar.addSubview(middleBtn)
        middleBtn.addTarget(self, action: #selector(self.CenterButtonAction), for: .touchUpInside)

        self.view.layoutIfNeeded()
    }

    //MARK: center button click event
    @objc func CenterButtonAction(sender: UIButton) {
        self.selectedIndex = 1   // set your index here
    }
}

