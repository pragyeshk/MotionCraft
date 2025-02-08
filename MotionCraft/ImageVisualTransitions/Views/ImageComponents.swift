//
//  ItemPhoto.swift
//  MotionCraft
//
//  Created by Pragyesh Kumar Singh on 08/02/25.
//

import SwiftUI


// MARK: - Components

struct ItemPhotos: View {
    var photo: String

    init(_ photo: String) {
        self.photo = photo
    }

    var body: some View {
        Image(photo)
            .resizable()
            .scaledToFill()
            .frame(height: 450)
    }
}


struct ItemLabels: View {
    var photo: String
    
    init(_ photo: String) {
        self.photo = photo
    }
    
    var body: some View {
        Text(photo)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.primary)
    }
}

struct ItemDescription: View {
    var description: String
    
    init(_ description: String) {
        self.description = description
    }
    
    var body: some View {
        VStack {
            Text(description)
                .font(.title2)
                .italic()
                .multilineTextAlignment(.center)
                .frame(maxWidth: 300)
                .padding(.horizontal)
        }
    }
}
