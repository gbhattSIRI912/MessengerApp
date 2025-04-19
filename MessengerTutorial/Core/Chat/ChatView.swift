//
//  ChatView.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 28/12/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                //header
                VStack {
                    CircularProfileImageView(user: User.vikashUser, size: .xLarge)
                    VStack(spacing: 4) {
                        Text("Vikash Saklani")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("messager")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                    
                    
                }
                
                //Message
                ForEach(0...15, id: \.self) { message in
                    ChatMessageView(isFromCurrentUser: Bool.random())
                }
                
               
            }
            Spacer()
            //input view
            ZStack(alignment: .trailing) {
                TextField("Message....", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button {
                    
                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
                
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
