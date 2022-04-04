//
//  DriverStatsView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/6/22.
//

import SwiftUI

struct DriverStatsView: View {
    
    // PROPERTIES
    var drivers: DriverData
    let stat: [String] = ["Titles","Wins","Podiums","Pole Positions","Fastest Laps"]
    // BODY
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Driver Stats") {
                
                ForEach(0..<stat.count, id:\.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(stat[item])
                        }
                        .foregroundColor(drivers.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(drivers.stats[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }
    }
}

struct DriverStatsView_Previews: PreviewProvider {
    static var previews: some View {
        DriverStatsView(drivers: Driver_Data[0])
           // .preferredColorScheme(.dark)
            //.previewLayout(.fixed(width: 375, height: 480))
            //.padding
    }
}
