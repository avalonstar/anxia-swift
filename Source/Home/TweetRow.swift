//
//  TweetRow.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/18/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct TweetRow: View {
    var tweet: Tweet
    private var avatar: String

    init(tweet: Tweet) {
        self.tweet = tweet
        avatar = tweet.user.profileImageUrlHttps.replacingOccurrences(of: "_normal", with: "")
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(tweet.fullText)
            HStack(alignment: .center) {
                Avatar(url: URL(string: avatar)!)
                VStack(alignment: .leading) {
                    Text(tweet.user.name).bold()
                    Text("@\(tweet.user.screenName)")
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }.frame(maxWidth: .infinity).padding(.top)
        }
    }
}

struct TweetRow_Previews: PreviewProvider {
    static var previews: some View {
        TweetRow(tweet: tweetData[0])
    }
}
