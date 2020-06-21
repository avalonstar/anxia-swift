//
//  Avatar.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/20/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import SwiftUI
import URLImage

struct Avatar: View {
    var url: URL

    var body: some View {
        URLImage(self.url, content: {
            $0.image.resizable().aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 4))
        }).frame(width: 36, height: 36)
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar(url: URL(string: "https://avatars3.githubusercontent.com/u/35501759")!)
    }
}
