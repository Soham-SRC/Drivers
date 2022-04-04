//
//  SourceLinkView.swift
//  Drivers
//
//  Created by Soham Chavan on 3/6/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            
            HStack {
                Text("Source Content")
                Spacer()
                Link("wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .padding()
            .previewLayout(.sizeThatFits)
            
    }
}
