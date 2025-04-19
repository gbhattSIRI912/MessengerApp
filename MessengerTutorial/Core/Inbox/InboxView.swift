//
//  InboxView.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 25/12/24.
//

import SwiftUI

struct InboxView: View {
    @State private var showNewMessageView: Bool = false
    @State private var user = User.vikashUser
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ActiveNowView()
                    
                    LazyVStack(spacing: 8) {
                        ForEach(0...10, id: \.self) { message in
                            InboxRowView()
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .fullScreenCover(isPresented: $showNewMessageView, content: {
                NewMessageView()
            })
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        NavigationLink(value: user) {
                            CircularProfileImageView(user: user, size: .xSmall)
                        }
                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                ToolbarItem(placement: .topBarTrailing)  {
                    Button {
                        showNewMessageView.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray))
                    }
                }
            }
        }
    }
}


#Preview {
    InboxView()
}
