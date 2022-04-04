//
//  DriverHeaderView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/6/22.
//

import SwiftUI

struct DriverHeaderView: View {
    // properties
    var driver : DriverData
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        // body
        ZStack{
            LinearGradient(gradient: Gradient(colors: driver.gradientColors), startPoint:.topLeading, endPoint: .bottomTrailing )
            Image(driver.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 2, x: 2, y: 2)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0:06)
                .onAppear(){
                    withAnimation(.easeOut(duration: 0.5)){ isAnimating=true}
                }
        }
        
    }
}

struct DriverHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DriverHeaderView(driver: Driver_Data[0])
            .previewLayout(.fixed(width: 375, height: 440 ))
    }
}
