//
//  Maazasapplication1App.swift
//  Maazasapplication1

import SwiftUI

@main
struct Maazasapplication1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
