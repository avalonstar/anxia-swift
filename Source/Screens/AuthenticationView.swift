//
//  ContentView.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/17/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Sign in with Twitter")
                    .bold()
                    .foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(Color("TwitterBlue"))
            .cornerRadius(4)
            .padding(.horizontal)
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
