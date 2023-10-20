//
//  InspectionViewModel.swift
//  CrimeFiles
//
//  Created by Igor on 28.09.2023.
//

import Foundation

final class InspectionViewModel: ObservableObject {
    
    @Published var inspections: [Inspection]
    
    init() {
        inspections = DataBase().inspections
    }

}
