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
        Text(tweet.fullText)
    }
}

struct TweetDetail_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetail(tweet: tweetData[3])
    }
}
