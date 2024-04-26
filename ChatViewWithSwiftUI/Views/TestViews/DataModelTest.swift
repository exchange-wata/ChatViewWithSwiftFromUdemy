//
//  DataModelTest.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/27.
//

import SwiftUI

struct DataModelTest: View {
    let user1 = User(id: "1", name: "カーキ", image: "bird_shimaenaga")
    let user2 = User(id: "2", name: "ブルー", image: "cat_hand_black")
    
    var body: some View {
        VStack {
            Text(user1.name)
            Image(user1.image)
        }
    }
}

struct DataModelTest_Previews: PreviewProvider {
    static var previews: some View {
        DataModelTest()
    }
}
