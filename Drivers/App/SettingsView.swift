//
//  SettingsView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/7/22.
//

import SwiftUI

struct SettingsView: View {
    // PROPERTIES
    @Environment (\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack(spacing: 20){
                    // Section 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Drivers", labelImage: "info.circle")
                        )
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10)
                        {
                            Image("logo.svg")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Spacer()
                            Text(" Formula one is the most popular motorsporting event under the administration of FIA. ")
                    }
                    }
                    
                    
                    // Section 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "customization", labelImage: "paintbrush"))
                    {
                        Divider().padding(.vertical, 4)
                        Text("return to onboarding view")
                            .padding()
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding){
                            Text("reboot".uppercased())
                        }
                            
                    }
                    .padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 2, style: .continuous))
                    
                    // Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    )
                    {
                        
                        SettingsRowView(name: "Developer", content: "SRC")
                        SettingsRowView(name: "Designer", content: "SRC")
                        SettingsRowView(name: "Compatibility", content: "ios15")
                        SettingsRowView(name: "Instagram", linkLabel: "@sohamchavan__", linkDestination:  "instagram.com/sohamchavan__/")
                        SettingsRowView(name: "GitHub", linkLabel:"Soham-SRC", linkDestination: "github.com/Soham-SRC")
                            
                        
                    }
                
            }
            }
            .navigationBarTitle(Text("Settings"),displayMode: .large)
            .navigationBarItems(
                trailing:
                    Button(action: {presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                    }
            )
            .padding()
        }
            
    }



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
}
