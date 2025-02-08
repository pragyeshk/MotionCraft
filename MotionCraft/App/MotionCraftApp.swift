//
//  MotionCraftApp.swift
//  MotionCraft
//
//  Created by Pragyesh Kumar Singh on 08/02/25.
//

import SwiftUI

@main
struct MySwiftUIAppApp: App {
    @StateObject private var coordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            coordinator.rootView
        }
    }
}

