//
//  SettingsRowView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/8/22.
//

import SwiftUI

struct SettingsRowView: View {
    // PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if( content != nil ){
                    Text(content!).fontWeight(.bold)
                }
                else if( linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
}
}

struct SettingsRowView_Previews: PreviewProvider { 
    static var previews: some View {
        SettingsRowView(name: "Devloper", content: "SRC")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
