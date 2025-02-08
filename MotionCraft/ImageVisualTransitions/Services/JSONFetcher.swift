//
//  JSONFetcher.swift
//  MotionCraft
//
//  Created by Pragyesh Kumar Singh on 08/02/25.
//

import Foundation

// MARK: - JSON Fetcher
/// `JSONFetcher` is responsible for loading mock JSON data from the app bundle.
/// It fetches image names stored in a local JSON file and decodes them into `ImageModel` objects.
final class JSONFetcher {
    
    // MARK: - Fetch Images Method
    /// Fetches images from the local `Image_mock_data.json` file.
    /// - Parameter completion: A closure returning either a success result with `[ImageModel]`
    ///   or a failure result with an `Error`.
    static func fetchImages(completion: @escaping (Result<[ImageModel], Error>) -> Void) {
        guard let url = Bundle.main.url(forResource: "Image_mock_data", withExtension: "json") else {
            completion(.failure(NSError(domain: "Invalid file path", code: 404, userInfo: nil)))
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode(ImageResponse.self, from: data)
            completion(.success(decodedData.images))
            print("Fetched Images: \(decodedData.images)")
        } catch {
            completion(.failure(error))
            print("Decoding Error: \(error)")
        }
    }
}
