//
//  ScapeApp.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI

@main
struct ScapeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ScapeCharacterStore())
        }
    }
}
