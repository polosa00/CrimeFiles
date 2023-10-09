//
//  CustomNavigationBarContainerView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 4.10.2023.
//

import SwiftUI

struct CustomNavigationBarContainerView<Content: View>: View {
    
    let content: Content
    
    @State private var showBackButton: Bool = true
    @State private var title: String = ""
    @State private var imageName: String = ""
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            Color.clear // Color for backgraound
            
            
            VStack(spacing: 0){
                CustomNavigationBarView(
                    showBackButton: showBackButton,
                    title: title,
                    imageName: imageName
                )
                .background(Color.clear.ignoresSafeArea())
                content
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .background(Color.clear)
            .onPreferenceChange(CustomNavBarTitilePreferenceKey.self) { value in
                self.title = value
            }
            .onPreferenceChange(CustomNavBarImagePreferenceKey.self) { value in
                self.imageName = value
            }
            .onPreferenceChange(CustomNavBarBackButtonHiddenPreferenceKey.self) { value in
                self.showBackButton = !value
            }
        }
    }
}

struct CustomNavigationBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBarContainerView {
            ZStack {
                Color.gray.ignoresSafeArea()
                
                Text("Hello")
                    .foregroundColor(.white)
                    .customNavigationTile("New Title")
                    .customNavigationImage("detective")
                   
                    .customNavigationBarBackButtonHidden(true)
            }
        }
    }
}
