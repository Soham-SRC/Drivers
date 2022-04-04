//
//  OnboardingView.swift
//  Drivers
//
//  Created by Soham Chavan on 2/26/22.
//

import SwiftUI

struct OnboardingView: View
{
    
    // PROPERTIES
    var driver: [DriverData] = Driver_Data
    
    
    // BODY
    var body: some View
    {
        TabView
        {
            ForEach (driver [0..<3]){
            item in
                DriverCardView(driver: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, -40)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(driver: Driver_Data)
    }
}
