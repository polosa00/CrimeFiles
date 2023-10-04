 //
//  CustomNavView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 4.10.23.
//

import SwiftUI

struct CustomNavView<Content: View>: View {
    let content : Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationStack {
            CustomNavBarContainerView {
                content
                
            }
            .toolbar(.hidden)
        }
    }
}

struct CustomNavView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView {
            Color.red.ignoresSafeArea()
        }
    }
}

extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
