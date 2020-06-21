//
//  ContentView.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/17/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct AuthenticationView: View {
    @EnvironmentObject var user: Authentication

    var body: some View {
        VStack {
            AuthenticationButton(action: { self.user.authenticate() })
        }.sheet(isPresented: self.$user.showSheet) {
            SafariView(url: self.$user.authUrl)
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView().environmentObject(Authentication())
    }
}
