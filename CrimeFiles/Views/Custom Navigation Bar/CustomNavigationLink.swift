//
//  CustomNavigationLink.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 4.10.2023.
//

import SwiftUI

struct CustomNavigationLink<Label: View, Destination: View>: View {
    
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label()
    }
    
    var body: some View {
        NavigationLink (
            destination:
                CustomNavigationBarContainerView(content: {
                    destination
                })
                .navigationBarHidden(true)
            ,
            label: {
                label
            })
    }
}

struct CustomNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView {
            CustomNavigationLink(
                destination: Text("Destination")) {
                    Text ("CLICK ME" )
                }
        }
    }
}
