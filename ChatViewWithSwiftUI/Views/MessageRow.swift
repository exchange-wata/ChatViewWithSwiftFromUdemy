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
            userIcon
            messageText
            messageState
            Spacer()
        }
        .padding(.bottom)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        let exampleMessage = Message(id: "1", text: "テストメッセージ", date: "2023-01-30 12:03:00", user: User(id: "1", name: "ユーザー名", image: "user01"), isRead: false)
        MessageRow(message: exampleMessage)
            .background(.teal)
    }
}

extension MessageRow {
    private var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
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
            .background(.white)
            .cornerRadius(30)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing) {
            Spacer()
            Text(message.isRead ? "既読" : "未読")
            Text(formattedDateString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
}
