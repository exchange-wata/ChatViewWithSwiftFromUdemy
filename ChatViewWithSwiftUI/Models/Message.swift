//
//  Message.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/27.
//

import Foundation

struct Message {
    let id: String = UUID().uuidString
    let text: String
    let date: Date
    let user: User
    var isRead: Bool
}
