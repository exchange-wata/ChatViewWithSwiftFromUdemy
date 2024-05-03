//
//  User.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/27.
//

import Foundation

struct User: Decodable {
    let id: String
    let name: String
    let image: String
    
    // ログインユーザーを固定して実装する
    var isSpecificLoginUser: Bool {
        self.id == User.loginUser.id
    }
    
    // 本体はサーバーと通信をする
    static var loginUser: User {
        User(id: "1", name: "Mz", image: "user01")
    }
}
