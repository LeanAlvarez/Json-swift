//
//  JsonAppApp.swift
//  JsonApp
//
//  Created by Lean on 02/07/2024.
//

import SwiftUI

@main
struct JsonAppApp: App {
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
