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
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 48, height: 48)
            Text("hellohellohellohellohellohellohellohellohellohellohellohellohellohello")
                .padding()
                .background(.white)
                .cornerRadius(30)
            VStack(alignment: .trailing) {
                Spacer()
                Text("既読")
                Text(formattedDateString)
            }
            .foregroundColor(.secondary)
            .font(.footnote)
            
            Spacer()
        }
        .padding(.bottom)
    }
    
    private var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow()
            .background(.teal)
    }
}
