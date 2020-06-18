//
//  TweetList.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/18/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct TweetList: View {
    var body: some View {
        NavigationView {
            List(tweetData) { tweet in
                NavigationLink(destination: TweetDetail(tweet: tweet)) {
                    TweetRow(tweet: tweet)
                }
            }
            .navigationBarTitle(Text("Timeline"))
        }
    }
}

struct TweetList_Previews: PreviewProvider {
    static var previews: some View {
        TweetList()
    }
}
