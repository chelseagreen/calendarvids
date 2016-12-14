//
//  LogNavigationController.swift
//  CoachVideos
//
//  Created by Chelsea Green on 11/26/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit
import CVCalendar

class LogNavigationController: BaseViewController, CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    
    var menuView = CVCalendarMenuView(frame: CGRect(x: 0, y: 0, width: 300, height: 15))
    var calendarView = CVCalendarView(frame: CGRect(x: 0, y: 20, width: screenWidth, height: screenHeight))
    var currentCalendar: Calendar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.addSubview(menuView)
        view.addSubview(calendarView)
        
        self.menuView.menuViewDelegate = self
        self.calendarView.calendarDelegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        calendarView.commitCalendarViewUpdate()
        menuView.commitMenuViewUpdate()
    }
    
    func presentationMode() -> CalendarMode {
        return .weekView
    }
    
    func firstWeekday() -> Weekday {
        return .monday
    }
    
    func calendar() -> Calendar? {
        return currentCalendar
    }
}
