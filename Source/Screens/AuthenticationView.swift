//
//  ContentView.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/17/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import Alamofire
import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack {
            AuthenticationButton().onTapGesture {
                self.startAuthentication()
            }
        }
    }
    
    func startAuthentication() {
        print("Start Authentication.")
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
