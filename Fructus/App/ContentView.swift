//
//  ContentView.swift
//  Fructus
//
//  Created by Александр Карпов on 17.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            Button(action: {
                isOnboarding = true
            }, label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .padding(.vertical, 4)
            })
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
