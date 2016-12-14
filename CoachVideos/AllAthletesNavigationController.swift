//
//  AllAthletesNavigationController.swift
//  CoachVideos
//
//  Created by Chelsea Green on 12/13/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

class AllAthletesNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewControllers = [AllAthletesViewController()]
        
        navigationBar.tintColor = UIColor.black
    }
}
