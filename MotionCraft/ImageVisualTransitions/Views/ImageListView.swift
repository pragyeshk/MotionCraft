//
//  ImageListView.swift.swift
//  MotionCraft
//
//  Created by Pragyesh Kumar Singh on 08/02/25.
//

import SwiftUI

struct ImageListView: View {
    @StateObject private var viewModel = ImageViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 16) {
                    ForEach(viewModel.images) { photo in
                        VStack(spacing: 12) {
                            ZStack {
                                ItemPhotos(photo.name)
                                    .scrollTransition(axis: .horizontal) { content, phase in
                                        content
                                            .offset(x: phase.isIdentity ? 0 : phase.value * -270)
                                    }
                            }
                            .containerRelativeFrame(.horizontal)
                            .clipShape(RoundedRectangle(cornerRadius: 36))
                            
                            // Description above the image
                            ItemDescription(photo.description)
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .opacity(phase.isIdentity ? 1 : 0)
                                        .offset(x: phase.value * 100)
                                }
                        }
                    }
                }
            }
            .navigationTitle("Image List")
            .contentMargins(32)
            .scrollTargetBehavior(.paging)
            .scrollIndicators(.hidden)
            .onAppear {
                viewModel.loadImages()
            }
        }
    }
}

#Preview {
    ImageListView()
}




