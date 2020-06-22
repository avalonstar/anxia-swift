//
//  SettingsView.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/21/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("General").bold()) {
                        Text("Display")
                    }
                    Section(header: Text("About Anxia").bold()) {
                        Text("About Avalonstar")
                        Text("Acknowledgements")
                    }
                    Button(action: {}) {
                        Text("Tip Anxia")
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle("Settings", displayMode: .inline)
                .navigationBarItems(leading: Button("Cancel", action: { self.presentationMode.wrappedValue.dismiss() }))
                Text("©2020 Avalonstar, Inc.").font(.footnote).foregroundColor(Color.gray).padding()
                
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
