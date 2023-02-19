//
//  SettingsView.swift
//  Fructus
//
//  Created by Александр Карпов on 19.02.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("More fruits are naturally low in fat, sodium and colories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Frutus", labelImage: "info.circle")
                    }

                    
                    //MARK: - SECTION 2
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the appliation by toogle the switch on this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Costomization", labelImage: "paintbrush")
                    }

                    
                    //MARK: - SECTION 3
                    
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Alexander Karpov")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@papadoster", linkDestination: "twitter.com/papadoster")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    } //: BOX
                    

                    
                }
                .navigationTitle("Settings")
                .toolbar(content: {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .fontWeight(.bold)
                    }

                })
                .padding()
            } // SCROLL
            
        } // NAV STACK
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
