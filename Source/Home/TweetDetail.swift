//
//  TweetDetail.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/18/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct TweetDetail: View {
    var tweet: Tweet

    var body: some View {
        VStack(alignment: .leading) {
            Text(tweet.fullText)
                .font(.system(.headline))
                .fontWeight(.light)

            Text(tweet.user.name)
                .bold()
                .padding(.top)
            Text("@\(tweet.user.screenName)")
                .foregroundColor(Color.gray)
            Spacer()
        }
        .padding()
    }
}

struct TweetDetail_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetail(tweet: tweetData[1])
    }
}
