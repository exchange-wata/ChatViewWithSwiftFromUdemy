//
//  DataModelTest.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/28.
//

import SwiftUI

struct DataModelTest: View {
    let user1 = User(id: "1", name: "カーキ", image: "user01")
    let user2 = User(id: "2", name: "ブルー", image: "user02")
    
    let message: Message
    
    init() {
        message = Message(text: "こんにちは", date: Date(), user: user1, isRead: false)
    }
    
    var body: some View {
        VStack {
            Text(user1.name)
            Image(user1.image)
            
            Text(message.text)
            Text(message.user.name)
        }
    }
}

struct DataModelTest_Previews: PreviewProvider {
    static var previews: some View {
        DataModelTest()
    }
}
