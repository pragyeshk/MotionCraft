//
//  AppCoordinator.swift
//  MotionCraft
//
//  Created by Pragyesh Kumar Singh on 08/02/25.
//

import SwiftUI

// MARK: - App Coordinator
/// `AppCoordinator` is responsible for managing the navigation flow of the app.
/// It determines which view should be the root view.
final class AppCoordinator: ObservableObject {
    
    // MARK: - Published Properties
    /// The root view of the application, wrapped in `AnyView` for flexibility in navigation.
    @Published var rootView: AnyView

    // MARK: - Initializer
    /// Initializes the `AppCoordinator` with the initial root view.
    init() {
        self.rootView = AnyView(ImageListView())
    }
}
