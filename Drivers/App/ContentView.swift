//
//  ContentView.swift
//  Drivers
//
//  Created by Soham Chavan on 2/25/22.
//

import SwiftUI

struct ContentView: View {
    // PROPERTIES
    
    var driver:[DriverData] = Driver_Data
    @State private var isShowingSettings: Bool = false
    
    // BODY
    var body: some View {
  
        NavigationView {
            List{
                //ForEach(driver.shuffled()){
                ForEach(driver){
                    item in
                    NavigationLink(destination: DriverDetailView(driver: item)) {
                        DriverRowView(driver: item)
                    }
                }
                .navigationTitle("Drivers")
                .navigationBarItems(
                    trailing:
                    Button(action: {
                        isShowingSettings = true })
                    {
                       Image(systemName: "slider.horizontal.3")
                    }
                        .sheet(isPresented: $isShowingSettings){
                            SettingsView()
                        }
                )
                
            }
        }//Nav View
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(driver: Driver_Data)
    }
}
