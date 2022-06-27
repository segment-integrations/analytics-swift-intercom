//
//  BasicExampleApp.swift
//  BasicExample
//
//  Created by Brandon Sneed on 2/23/22.
//

import SwiftUI
import Segment
import SegmentIntercom

@main
struct BasicExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension Analytics {
    static var main: Analytics {
        let analytics = Analytics(configuration: Configuration(writeKey: "7O86AjgXwDLHxwXapRDkSFvqRzLA5n1V")
                    .flushAt(3)
                    .trackApplicationLifecycleEvents(true))
        analytics.add(plugin: IntercomDestination())
        return analytics
    }
}
