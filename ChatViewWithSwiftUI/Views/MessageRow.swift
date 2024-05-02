//
//  MessageRow.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/24.
//

import SwiftUI

struct MessageRow: View {
    let message: Message
    var body: some View {
        HStack(alignment: .top) {
            if message.user.isSpecificLoginUser {
                Spacer()
                messageState
                messageText
            } else {
                userIcon
                messageText
                messageState
                Spacer()
            }
        }
        .padding(.bottom)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        let exampleMessage1 = Message(id: "1", text: "テストメッセージ", date: "2023-01-30 12:03:00", user: User(id: "1", name: "ユーザー名", image: "user01"), isRead: false)
        MessageRow(message: exampleMessage1)
            .background(.teal)
        let exampleMessage2 = Message(id: "2", text: "テストメッセージ", date: "2023-01-30 12:03:00", user: User(id: "2", name: "ユーザー名", image: "user01"), isRead: false)
        MessageRow(message: exampleMessage2)
            .background(.teal)
    }
}

extension MessageRow {
    private var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        guard let date = formatter.date(from: message.date) else { return "" }
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }

    private var userIcon: some View {
        Image(message.user.image)
            .resizable()
            .frame(width: 48, height: 48)
            .cornerRadius(30)
    }
    
    private var messageText: some View {
        Text(message.text)
            .padding()
            .background(message.user.isSpecificLoginUser ? Color("Bubble") : Color(uiColor: .tertiarySystemBackground))
            .foregroundColor(message.user.isSpecificLoginUser ? .black : .primary)
            .cornerRadius(30)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing) {
            Spacer()
            if message.user.isSpecificLoginUser && message.isRead {
                Text("既読")                
            }
            Text(formattedDateString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
}
