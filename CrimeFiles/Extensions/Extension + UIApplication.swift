//
//  Extension + UIApplication.swift
//  CrimeFiles
//
//  Created by Igor on 06.10.2023.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
