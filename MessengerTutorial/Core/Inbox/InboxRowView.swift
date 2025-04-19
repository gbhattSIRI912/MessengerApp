//
//  InboxRowView.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 25/12/24.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
//            Image(systemName: "person.circle.fill")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 64, height: 64)
//                .foregroundStyle(Color(.systemGray4))
            CircularProfileImageView(user: User.vikashUser, size: .medium)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Vikash saklani")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("some text message for now ")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                Image(systemName: "chevron.right")
                
            }
            .font(.footnote)
            .foregroundStyle(.gray)
        }
        .frame(height: 72)
        
    }
}

#Preview {
    InboxRowView()
}
