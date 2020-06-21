//
//  RootView.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/20/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var user: Authentication

    var body: some View {
        return Group {
            if user.loggedIn {
                TweetList()
            }
            else {
                AuthenticationView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
