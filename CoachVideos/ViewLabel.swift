//
//  ViewLabel.swift
//  CoachVideos
//
//  Created by Chelsea Green on 11/26/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

class ViewLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        super.backgroundColor = UIColor.clear
        super.textAlignment = NSTextAlignment.center
        super.textColor = UIColor.black
        super.adjustsFontSizeToFitWidth = true
        super.font = UIFont(name: "HelveticaNeue", size: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
