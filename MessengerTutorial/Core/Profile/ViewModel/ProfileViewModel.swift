//
//  ProfileViewModel.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 28/12/24.
//

import SwiftUI
import PhotosUI

class ProfileViewModel : ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet {
            Task {
                try await loadImage()
            }
        }
    }
    @Published var profileImage: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else { return }
        guard let imagedata = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imagedata) else { return }
        self.profileImage = Image(uiImage: uiImage)
        
    }
}
