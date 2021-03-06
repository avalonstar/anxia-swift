//
//  TweetList.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/18/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct TweetList: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showingForm = false

    var body: some View {
        NavigationView {
            List(tweetData) { tweet in
                NavigationLink(destination: TweetDetail(tweet: tweet)) {
                    TweetRow(tweet: tweet)
                }
            }
            .navigationBarTitle(Text("Timeline"))
            .navigationBarItems(
                leading: Button("Menu") { print("Menu") },
                trailing: Button(action: { self.showingForm.toggle() }) { Image(systemName: "square.and.pencil").imageScale(.large) }.sheet(isPresented: $showingForm) { TweetForm() }
            )
        }
    }
}

struct TweetList_Previews: PreviewProvider {
    static var previews: some View {
        TweetList().environment(\.colorScheme, .dark)
    }
}
