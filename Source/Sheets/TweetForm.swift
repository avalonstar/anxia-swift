//
//  TweetForm.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/18/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct TweetForm: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var tweet = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("What's on your mind?", text: $tweet).padding()
                Spacer()
            }
            .navigationBarTitle(Text("Compose"), displayMode: .inline)
            .navigationBarItems(leading: Button("Cancel", action: { self.presentationMode.wrappedValue.dismiss() }), trailing: Button("Tweet", action: {}))
        }
    }
}

struct TweetForm_Previews: PreviewProvider {
    static var previews: some View {
        TweetForm()
    }
}
