//
//  AllAthletesViewController.swift
//  CoachVideos
//
//  Created by Chelsea Green on 12/13/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import Foundation
import UIKit

class AllAthletesViewController: BaseViewController,  UITableViewDelegate, UITableViewDataSource {
    
    var athleteTableView : UITableView = UITableView()
    let athleteList: NSArray = ["jane", "mary", "dickface", "bleep", "meow", "derp", "dumb diddle"]
 
    override func viewDidLoad() {
        
        navigationItem.title = "Coach App Thing"
        
        self.athleteTableView.rowHeight = 50
        self.view.addSubview(self.athleteTableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.athleteTableView.delegate = self
        self.athleteTableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        athleteTableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection saved: Int) -> Int {
        return athleteList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let athlete = athleteList[indexPath.row] as! String
        let cell = UITableViewCell(frame: CGRect(x: 0,y: 0, width: self.view.frame.width, height: 100))
        cell.textLabel?.text = athlete
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            let athlete = athleteList[indexPath.row]
            //do something to delete athlete i guess
        default:
            return
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(TabViewController(), animated: true)
    }
}
