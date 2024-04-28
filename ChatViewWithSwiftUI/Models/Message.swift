//
//  Message.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/27.
//

import Foundation

struct Message: Decodable, Identifiable {
    let id: String
    let text: String
    let date: String
    let user: User
    var isRead: Bool
}
