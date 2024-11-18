//
//  BookMasterApp.swift
//  BookMaster
//
//  Created by Valentin Harenzhenkov on 10.10.24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct BookMasterApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            RouteView()
                .preferredColorScheme(.light)
        }
    }
}


let currentUserID: UUID = .init()
