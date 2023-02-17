//
//  ContentView.swift
//  Fructus
//
//  Created by Александр Карпов on 17.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in
                FruitRowView(fruit: fruit)
                    .padding(.vertical, 4)
            }
            Button(action: {
                isOnboarding = true
            }, label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .padding(.vertical, 4)
            })
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
