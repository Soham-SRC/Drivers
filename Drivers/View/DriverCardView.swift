//
//  DriverCardView.swift
//  Drivers
//
//  Created by Soham Chavan on 2/26/22.
//

import SwiftUI

struct DriverCardView: View
{
    
// PROPERTIES
    
    var driver: DriverData
    
    @State private var isAnimating: Bool = false
    
// BODY
    
    
    
    var body: some View
    {
        ZStack(){
        VStack()
        {
            
            Image(driver.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
            Text(driver.title)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.50 ), radius: 2, x: 2, y: 2)
                .padding(.vertical, 30)
            
//            Text("aka ice man \n Titles: \t Wins: \n Podiums: \t fastest laps")
            
            
            Text(driver.headline)
                .foregroundColor(Color.white)
                .frame(maxWidth: 480)
                .font(.largeTitle)
            
        MoreButtonView()
                .padding(.vertical)
        }
        }
        .onAppear()
        {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true}
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.linearGradient(Gradient(colors: driver.gradientColors),startPoint: .top, endPoint: .bottom))
        .cornerRadius(40)
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        
    }
}



struct DriverCardView_Previews: PreviewProvider
{
// PREVIEW
    
    static var previews: some View
    {
        DriverCardView(driver: Driver_Data[1])
            .previewLayout(.fixed(width: 320, height: 640 ))
    }
}
 
