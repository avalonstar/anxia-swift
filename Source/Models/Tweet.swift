//
//  Tweet.swift
//  Anxia
//
//  Created by Bryan Veloso on 6/18/20.
//  Copyright © 2020 Avalonstar Inc. All rights reserved.
//

import Foundation

struct Tweet: Codable, Identifiable {
    let createdAt: String
    let id: Int64
    let idStr: String
    let fullText: String
    let truncated: Bool
    let displayTextRange: [Int]
    let user: User
}
