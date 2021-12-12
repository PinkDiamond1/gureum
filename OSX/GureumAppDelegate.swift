//
//  GureumAppDelegate.swift
//  Gureum
//
//  Created by 혜원 on 2018. 8. 27..
//  Copyright © 2018 youknowone.org. All rights reserved.
//

import Cocoa
import Foundation
import GureumCore
import UserNotifications
import Hangul

class NotificationCenterDelegate: NSObject, NSUserNotificationCenterDelegate {
    static let appDefault = NotificationCenterDelegate()

    func userNotificationCenter(_: NSUserNotificationCenter, didActivate notification: NSUserNotification) {
        guard let userInfo = notification.userInfo else {
            return
        }
        guard let download = userInfo["url"] as? String else {
            return
        }
        var updating: Bool = false
        switch notification.activationType {
        case .actionButtonClicked:
            fallthrough
        case .contentsClicked:
            updating = true
        default:
            break
        }
        if updating {
            NSWorkspace.shared.open(URL(string: download)!)
        }
        answers.logUpdateNotification(updating: updating)
    }
}

class GureumAppDelegate: NSObject, NSApplicationDelegate, GureumApplicationDelegate {
    @IBOutlet var menu: NSMenu!

    let configuration = Configuration.shared
    let notificationCenterDelegate = NotificationCenterDelegate()

    func applicationDidFinishLaunching(_: Notification) {
        UserDefaults.standard.register(defaults: ["NSApplicationCrashOnExceptions": true])

        // IMKServer를 띄워야만 입력기가 동작한다
        _ = InputMethodServer.shared

        watcher.reloadConfiguration()
    }
}
