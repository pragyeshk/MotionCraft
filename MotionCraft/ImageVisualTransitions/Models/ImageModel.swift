//
//  ImageModel.swift
//  MotionCraft
//
//  Created by Pragyesh Kumar Singh on 08/02/25.
//

import Foundation

// MARK: - Image Model
/// Represents an image with its name and description.
struct ImageModel: Codable, Identifiable {
    let id = UUID()
    let name: String
    let description: String

    enum CodingKeys: String, CodingKey {
        case name, description
    }
}

// MARK: - Image Response
/// Decodes the array of images from JSON.
struct ImageResponse: Codable {
    let images: [ImageModel]
}
