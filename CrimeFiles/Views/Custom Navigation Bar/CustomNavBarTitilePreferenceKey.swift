//
//  CustomNavBarTitilePreferenceKey.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 4.10.2023.
//

import Foundation

//import SwiftUI
//
//struct CustomNavBarTitilePreferenceKey: PreferenceKey {
//    static var defaultValue: String = ""
//    
//    static func reduce(value: inout String, nextValue: () -> String) {
//        value = nextValue()
//    }
//}
//
//struct CustomNavBarImagePreferenceKey: PreferenceKey {
//    static var defaultValue: String? = nil
//    
//    static func reduce(value: inout String?, nextValue: () -> String?) {
//        value = nextValue()
//    }
//}
//struct CustomNavBarBackButtonHiddenPreferenceKey: PreferenceKey {
//    static var defaultValue: Bool = false
//    
//    static func reduce(value: inout Bool, nextValue: () -> Bool) {
//        value = nextValue()
//    }
//}
//
//extension View {
//    func customNavigationTile(_ title: String) -> some View {
//        self
//            .preference(key: CustomNavBarTitilePreferenceKey.self, value: title)
//    }
//    
//    func customNavigationImage(_ imageName: String?) -> some View {
//        self
//            .preference(key: CustomNavBarImagePreferenceKey.self, value: imageName)
//    }
//
//    func customNavigationBarBackButtonHidden(_ hidden: Bool) -> some View {
//        self
//            .preference(key: CustomNavBarBackButtonHiddenPreferenceKey.self, value: hidden)
//    }
//    
//    // combine above three functions
////    func customNavBarItems(title: String = "", imageName: String? = nil, backButtonHidden: Bool = false) -> some View {
////        self
////            .customNavigationTile(title)
////            .customNavigationImage(imageName)
////            .customNavigationBarBackButtonHidden(backButtonHidden)
////    }
//}
