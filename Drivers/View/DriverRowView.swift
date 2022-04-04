//
//  DriverRowView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/6/22.
//

import SwiftUI

struct DriverRowView: View {
    // PROPERTIES
    
    var driver: DriverData
    
    // BODY
    
    var body: some View {
        HStack{
            Image(driver.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: driver.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(driver.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(driver.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                
            }
            
        }
}


    // PREVIEW
struct DriverRowView_Previews: PreviewProvider {
    static var previews: some View {
        DriverRowView(driver: Driver_Data[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
}
