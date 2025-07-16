//
//  WhishListApp.swift
//  WhishList
//
//  Created by MahmoudRamadan on 15/07/2025.
//

import SwiftUI
import SwiftData

@main
struct WhishListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Wish.self)
        }
    }
}
