//
//  CustomNavBarContainerView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 4.10.23.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    
    @State var showBackButton: Bool = true
    @State var title: String = ""
    @State var subtitle: String? = nil
    @State var imageTitle: String = ""

    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView(showBackButton: showBackButton, title: title, subtitle: subtitle, imageTitle: imageTitle)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferanseKey.self) { value in
            self.title = value
        }
        .onPreferenceChange(CustomNavBarSubtitlePreferanseKey.self) { value in
            self.subtitle = value
        }
        .onPreferenceChange(CustomNavBarImageTitlePreferanseKey.self) { value in
            self.imageTitle = value
        }
        .onPreferenceChange(CustomNavBarBackButtonHiddenPreferanseKey.self) { value in
            self.showBackButton = !value
        }
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView {
            ZStack{
                Color.green.ignoresSafeArea()
                Text("Hello!")
                    .foregroundColor(.white)
                    .customNavigationTitle("New Title")
                    .customNavigationSubTitle("Here subtitle")
                    .customNavigationImageTitle("detective3")
//                    .customNNavBarBackButtonHidden(true)
            }
        }
    }
}
