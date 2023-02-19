//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Александр Карпов on 19.02.2023.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
        
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Aleksandr Karpov")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "alex", linkLabel: "bla", linkDestination: "www.google.om")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
