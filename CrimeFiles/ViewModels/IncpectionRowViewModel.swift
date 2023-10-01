//
//  IncpectionRowViewModel.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 1.10.23.
//

import Foundation

class InspectionRowVieModel: ObservableObject {
    
    @Published var inspectionRows = DataBase().inspections
     
}
