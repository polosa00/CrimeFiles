//
//  CrimeFilesApp.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 22.09.23.
//

import SwiftUI

@main

struct CrimeFilesApp: App {
    
    @StateObject var searchManager = SearchManager()
    
    var body: some Scene {
        WindowGroup {
            MainView(searchManager: searchManager)
                .environmentObject(searchManager)
        }
    }
}
