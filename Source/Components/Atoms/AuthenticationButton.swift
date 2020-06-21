//
//  AuthenticationButton.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/18/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI

struct AuthenticationButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            Text("Sign in with Twitter")
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color("TwitterBlue"))
                .cornerRadius(4)
                .padding(.horizontal)
        }
    }
}

struct AuthenticationButton_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationButton(action: { print("Test.") })
    }
}
