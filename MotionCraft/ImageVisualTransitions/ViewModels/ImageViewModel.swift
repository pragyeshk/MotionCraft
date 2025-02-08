//
//  ImageViewModel.swift
//  MotionCraft
//
//  Created by Pragyesh Kumar Singh on 08/02/25.
//

import Foundation

// MARK: - Image ViewModel
/// `ImageViewModel` is responsible for handling the fetching and management of images.
/// It conforms to `ObservableObject` to allow SwiftUI views to react to data changes.
final class ImageViewModel: ObservableObject {
    
    // MARK: - Published Properties
    /// Holds the list of fetched images.
    @Published var images: [ImageModel] = []
    
    /// Stores an error message in case of a fetch failure.
    @Published var errorMessage: String?
    
    // MARK: - Load Images Method
    /// Fetches images using `JSONFetcher` and updates `images` or `errorMessage` accordingly.
    func loadImages() {
        JSONFetcher.fetchImages { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let images):
                    self?.images = images
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
