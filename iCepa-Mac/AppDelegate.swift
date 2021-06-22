//
//  AppDelegate.swift
//  iCepa-Mac
//
//  Created by Benjamin Erhart on 22.06.21.
//  Copyright © 2021 Guardian Project. All rights reserved.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if Config.torInApp {
            TorManager.shared.start { progress in
                print("Progress: \(progress)")
            } _: { error in
                if let error = error {
                    print("Tor start failed: \(error)")
                }
                else {
                    print("Tor started successfully!")
                }
            }
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}
