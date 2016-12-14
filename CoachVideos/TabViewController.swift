//
//  TabViewController.swift
//  CoachVideos
//
//  Created by Chelsea Green on 11/26/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        tabBar.tintColor = UIColor.black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let log = LogNavigationController()
        let video = VideoNavigationController()
        let comment = CommentsNavigationController()
        
        let logTitle = UITabBarItem(title: "Log", image: nil, tag: 0)
        log.tabBarItem = logTitle
        
        let videoTitle = UITabBarItem(title: "Videos", image: nil, tag: 1)
        video.tabBarItem = videoTitle
        
        let commentTitle = UITabBarItem(title: "Comments", image: nil, tag: 2)
        comment.tabBarItem = commentTitle
        
        let controllers = [log, video, comment]
        self.viewControllers = controllers
    }

    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title) ?")
        return true;
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override var shouldAutorotate : Bool {
        return true
    }
}

