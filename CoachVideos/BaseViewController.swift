//
//  BaseViewController.swift
//  CoachVideos
//
//  Created by Chelsea Green on 11/26/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

class BaseViewController: UIViewController, UINavigationControllerDelegate {

    var titleLabel = ViewLabel(frame: CGRect(x: 10, y: screenHeight/20, width: screenWidth-20, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        view.addSubview(titleLabel)
    }
}

