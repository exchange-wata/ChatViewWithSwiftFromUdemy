//
//  MessageRow.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/24.
//

import SwiftUI

struct MessageRow: View {
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
        MessageRow()
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
        Image("user01")
            .resizable()
            .frame(width: 48, height: 48)
            .cornerRadius(30)
    }
    
    private var messageText: some View {
        Text("hellohellohellohellohellohellohellohellohellohellohellohellohellohello")
            .padding()
            .background(.white)
            .cornerRadius(30)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing) {
            Spacer()
            Text("既読")
            Text(formattedDateString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
}
