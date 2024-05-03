//
//  ChatViewModel.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/28.
//

import Foundation

class ChatViewModel {
    var chatData: [Chat] = []
    var messages: [Message] = []
    
    init() {
        chatData = fetchChatData()
        messages = chatData[0].messages  // 暫定対応
    }
    
    private func fetchChatData() -> [Chat] {
        let filename = "chatData.json"
        let data: Data
        
        guard let filePath = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("\(filename)が見つかりませんでした")
        }
        
        
        do {
            data = try Data(contentsOf: filePath)
        } catch {
            fatalError("\(filename)のロードに失敗しました")
        }
        
        do {
           return try JSONDecoder().decode([Chat].self, from: data)
        } catch {
            fatalError("\(filename)を\(Chat.self)に変換できませんでした")
        }
    }
    
    func addMessage () {
        print("データ追加")
    }
}
