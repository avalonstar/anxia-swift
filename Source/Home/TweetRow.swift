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
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(tweet.fullText)
            HStack {
                VStack(alignment: .leading) {
                    Text(tweet.user.name).bold()
                    Text(tweet.user.screenName)
                }.padding(.top)
                Spacer()
            }
        }
    }
}

struct TweetRow_Previews: PreviewProvider {
    static var previews: some View {
        TweetRow(tweet: tweetData[1])
    }
}
