//
//  User.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 28/12/24.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullName: String
    let email: String
    let profileImageUrl: String?
    
}

extension User {
    static let vikashUser = User(fullName: "Vikash Saklani", email: "VikashSaklani@gmail.com", profileImageUrl: "person.circle.fill")
}
