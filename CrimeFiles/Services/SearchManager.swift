//
//  SearchManager.swift
//  CrimeFiles
//
//  Created by Igor on 19.10.2023.
//

import Foundation
import Combine

final class SearchManager: ObservableObject {
    @Published var searchText: String = ""
}
