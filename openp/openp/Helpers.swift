//
//  Helpers.swift
//  openp
//
//  Created by watr on 2018/03/02.
//  Copyright © 2018年 HASHIMOTO Wataru. All rights reserved.
//

import Foundation
import Cocoa

extension NSOpenPanel {
    struct Configuration {
        var message: String? = nil
        var canChooseFiles: Bool = true
        var canChooseDirectories: Bool = true
        var allowsMultipleSelection: Bool = false
    }
    func apply(_ config: Configuration) -> Self {
        if let message = config.message {
            self.message = message
        }
        self.canChooseFiles = config.canChooseFiles
        self.canChooseDirectories = config.canChooseDirectories
        self.allowsMultipleSelection = config.allowsMultipleSelection
        return self
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }
}
