//
//  CrimeFilesApp.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 22.09.23.
//

import SwiftUI

@main
struct CrimeFilesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
