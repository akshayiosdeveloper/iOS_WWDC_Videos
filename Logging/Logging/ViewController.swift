//
//  ViewController.swift
//  Logging
//
//  Created by Akshay Kumar on 23/02/24.
//

import UIKit
import OSLog

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.viewCycle.info("View Did Load")
        let userName = "Akshay"
        Logger.viewCycle.info("User \(userName) logged in")
        
        Logger.viewCycle.warning("Code is not written well")
        Logger.statistics.debug("analytics data is entered")
        Logger.viewCycle.error("Index out bound !!!")
        
        
    }


}
extension Logger {
    private static var subsystem = Bundle.main.bundleIdentifier!
    static let viewCycle = Logger(subsystem: subsystem, category: "View Life Cycle")
    static let statistics = Logger(subsystem: subsystem, category: "statistics")

}

