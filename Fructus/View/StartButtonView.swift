//
//  StartButtonView.swift
//  Fructus
//
//  Created by Александр Карпов on 17.02.2023.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack {
                Text("Start")
                    .foregroundColor(.white)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
            
        } //: Button
    }
        
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
