//
//  SettingsLabelView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/7/22.
//

import SwiftUI

struct SettingsLabelView: View {
    // PROPERTIES
    var labelText: String
    var labelImage: String
    // BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
        
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "DRIVER", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
