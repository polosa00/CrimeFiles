//
//  AppNavBarView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 4.10.23.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                
                CustomNavLink(
                    destination:
                                Text("Destination")
                        .customNavigationTitle("Check title for large text in scope")
                        .customNavigationImageTitle("ProtocolStructure")
                ) {
                    Text("Navigate")
                }
            }
            .customNavigationTitle("Custom title")
            .customNNavBarBackButtonHidden(true)
        }
        
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationStack {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("Nav Title 2")
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Navigate")
                }

            }
        }
    }
}
