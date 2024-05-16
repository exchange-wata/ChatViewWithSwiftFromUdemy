//
//  ChatViewModel.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/28.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var chatData: [Chat] = []
    
    init() {
        chatData = fetchChatData()
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
    
    func addMessage (chatId: String, text: String) {
        
        guard let index = chatData.firstIndex(where: { chat in chat.id == chatId }) else { return }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let formattedDateString = formatter.string(from: Date())
        
        let newMessage = Message(
            id: UUID().uuidString,
            text: text,
            date: formattedDateString,
            user: User.loginUser,
            isRead: false
        )
                
        chatData[index].messages.append(newMessage)
    }
}
