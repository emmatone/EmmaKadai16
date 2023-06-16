//
//  EmmaKadai16App.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

@main
struct EmmaKadai16App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Fruits())
        }
    }
}
