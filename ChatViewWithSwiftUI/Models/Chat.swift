//
//  Chat.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/28.
//

import Foundation

struct Chat: Decodable {
    let id: String
    let messages: [Message]
}
