//
//  ChatView.swift
//  ChatViewWithSwiftUI
//
//  Created by 渡辺瑞樹 on 2024/04/23.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Message Area
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(0..<15) {
                        _ in
                        HStack {
                            Circle()
                                .frame(width: 60, height: 60)
                            Capsule()
                                .frame(height: 60)
                        }
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 72)
            }
            .background(.teal)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}