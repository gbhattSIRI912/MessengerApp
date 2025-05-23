//
//  NewMessageView.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 25/12/24.
//

import SwiftUI

struct NewMessageView: View {
    @State private var searchText = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("To: ", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                Text("Contact")
                    .foregroundStyle(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
               
                ForEach(0...10, id: \.self) { user in
                    VStack {
                        HStack {
//                            Image(systemName: "person.circle.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 32, height: 32)
//                                .foregroundStyle(Color(.systemGray4))
                            CircularProfileImageView(user: User.vikashUser, size: .small)
                            Text("Neha")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            
                        }
                        .padding(.leading)
                    }
                    Divider()
                        .padding(.leading, 40)
                    
                    
                }
                
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                    .foregroundStyle(.black)
                    
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        NewMessageView()
    }
    
}
