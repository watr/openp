//
//  main.swift
//  openp
//
//  Created by watr on 2018/03/02.
//  Copyright © 2018年 HASHIMOTO Wataru. All rights reserved.
//

import Foundation
import Cocoa
let currentVersionDescription: String = "openp 0.0.1"
let config: NSOpenPanel.Configuration = NSOpenPanel.Configuration()

NSApplication.shared.setActivationPolicy(.accessory)
NSApplication.shared.delegate = AppDelegate()

NSApplication.shared.activate(ignoringOtherApps: true)
let openPanel = NSOpenPanel().apply(config)

let response = openPanel.runModal()
if response == .OK {
    print(openPanel.url!.path)
    exit(0)
}
else {
    exit(1)
}
