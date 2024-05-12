//
//  Chat.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/28.
//

import Foundation

struct Chat: Decodable, Identifiable {
    let id: String
    let messages: [Message]
    
    var recentMessageText: String {
        guard let recentMessage = self.messages.last else { return "" }
        
        return recentMessage.text
    }
}
