//
//  AppNavigationBarView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 4.10.2023.
//

import SwiftUI

struct AppNavigationBarView: View {
    var body: some View {
        
        CustomNavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                CustomNavigationLink(
                    destination:
                    Text("New title")) {
                    Text("Navigate")
                }
            }
            .customNavigationTile("Title")
            .customNavigationImage("detective")
        }
    }
}

struct AppNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavigationBarView()
    }
}

extension AppNavigationBarView {
    
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea ()
                
                NavigationLink(
                    destination:
                        Text ("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)) {
                    Text("Navigate")
                }
            }
            .navigationTitle ("Nav title here")
        }
    }
}
