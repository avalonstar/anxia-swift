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
            Spacer()
            VStack(alignment: .leading) {
                Text("Connect and communicate. Without the anxiety of stats.").font(.title)
            }.padding()
            Spacer()
            HStack {
                Image(systemName: "lock.circle.fill").foregroundColor(Color.gray)
                Text("Anxia needs permission to access your account.").font(.footnote).foregroundColor(Color.gray)
            }.padding(.bottom)
            AuthenticationButton(action: {
                self.user.authenticate()
            }).sheet(isPresented: self.$user.showSheet) {
                SafariView(url: self.$user.authUrl)
            }.padding(.horizontal)
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView().environmentObject(Authentication())
    }
}
