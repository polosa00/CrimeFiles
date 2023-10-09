//
//  CustomNavView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 4.10.2023.
//

import SwiftUI

struct CustomNavigationView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
        
            NavigationView {
                ZStack {
                    
                    
                    MainBackGroundView().ignoresSafeArea()
                    CustomNavigationBarContainerView{
                        content
                    }
                    .navigationBarHidden(true)
                    .background(Color.clear)
                    
                }
                .navigationViewStyle(.stack)
            }
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView {
            Color.clear
        }
    }
}

extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
