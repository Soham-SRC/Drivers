//
//  MoreButtonView.swift
//  Drivers
//
//  Created by Soham Chavan on 2/26/22.
//

import SwiftUI

struct MoreButtonView: View
{
    // PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // BODY
    var body: some View
    {
        Button(action: { isOnboarding = false } )
        {
            HStack(spacing: 8)
            {
                Text("More")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
            
        }
        .accentColor(Color.white )
    }
}

struct MoreButtonView_Previews: PreviewProvider {
    
    // PREVIEW
    
    static var previews: some View
    {
        MoreButtonView()
            .preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
