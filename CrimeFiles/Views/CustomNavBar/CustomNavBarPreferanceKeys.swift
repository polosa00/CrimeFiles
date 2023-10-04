//
//  CustomNavBarPreferanceKeys.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 4.10.23.
//

import Foundation
import SwiftUI





//@State var showBackButton: Bool = true
//@State var title: String = "Title will be here"
//@State var subtitle: String? = nil
//@State var imageTitle: String = "detective1"


struct CustomNavBarTitlePreferanseKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarSubtitlePreferanseKey: PreferenceKey {
    
    static var defaultValue: String? = nil
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}

struct CustomNavBarImageTitlePreferanseKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarBackButtonHiddenPreferanseKey: PreferenceKey {
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

extension View {
    
//    .navigationTitle("Nav Title 2")
//    .navigationBarBackButtonHidden(true)
    
    func customNavigationTitle(_ title: String) -> some View {
        preference(key: CustomNavBarTitlePreferanseKey.self, value: title)
    }
    
    func customNavigationSubTitle(_ subtitle: String?) -> some View {
        preference(key: CustomNavBarSubtitlePreferanseKey.self, value: subtitle)
    }
    
    func customNNavBarBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarBackButtonHiddenPreferanseKey.self, value: hidden)
    }
    
    func customNavigationImageTitle(_ imageTitle: String) -> some View {
        preference(key: CustomNavBarImageTitlePreferanseKey.self, value: imageTitle)
    }
    
    func customNavBarItems(title: String = "", subtitle: String? = nil, backButtonHidden: Bool = false, imageTitle: String = "") -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationSubTitle(subtitle)
            .customNNavBarBackButtonHidden(backButtonHidden)
            .customNavigationImageTitle(imageTitle)
            
    }
}

