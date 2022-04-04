//
//  DriversApp.swift
//  Drivers
//
//  Created by Soham Chavan on 2/25/22.
//

import SwiftUI

@main
struct DriversApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView()
            }
        }
    }
}
