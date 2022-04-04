//
//  DriverDetailView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/6/22.
//

import SwiftUI

struct DriverDetailView: View {
    // PROPERTIES
    var driver : DriverData
    
    // BODY
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // header
                    DriverHeaderView(driver: driver)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // title
                        Text(driver.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(driver.gradientColors[1])
                            //.shadow(color: Color.white, radius: 12, x: 0, y: 0)
                            
                        
                        // headline
                        Text(driver.headline)
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        // stats
                        DriverStatsView(drivers: driver)
                        
                        //subheadline
                        Text("More About \(driver.title)".uppercased())
                            .foregroundColor(driver.gradientColors[1])
                            
                        
                        // description
                        Text(driver.description)
                            .multilineTextAlignment(.leading)
                        
                        // link
                        SourceLinkView()
                            .padding(.bottom,40) 
                        
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationTitle(driver.title)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct DriverDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DriverDetailView(driver: Driver_Data[0])
            .preferredColorScheme(.dark)
    }
}
