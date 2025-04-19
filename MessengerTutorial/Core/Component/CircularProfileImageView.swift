//
//  CircularProfileImageView.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 28/12/24.
//

import SwiftUI

enum ProfileManageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimension: CGFloat {
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 56
        case .large: return 64
        case .xLarge: return 80
        }
    }
}

struct CircularProfileImageView: View {
    let user: User
    let size: ProfileManageSize
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
            
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                //.scaledToFit()
                .frame(width: size.dimension, height: size.dimension)
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.vikashUser, size: .medium)
}
