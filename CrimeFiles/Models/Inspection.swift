//
//  Inspection.swift
//  CrimeFiles
//
//  Created by Igor on 28.09.2023.
//

import SwiftUI

struct Inspection {
    let title: String
    let imageName: String
    let titleImage: String
    let rows: [RowInspection]
}

struct RowInspection {
    let title: String
    let imageName: String
    let rowsDetails: [RowDetailInspection]?
    let data: String
}

struct RowDetailInspection {
    let title: String
    let imageName: String
    let data: String
}
