//
//  CustomNavView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 4.10.2023.
//

import SwiftUI

//struct CustomNavigationView<Content: View>: View {
//    
//    let content: Content
//    
//    init(@ViewBuilder content: () -> Content) {
//        self.content = content()
//    }
//    
//    var body: some View {
//        NavigationView {
//            CustomNavigationBarContainerView{
//                content
//            }
//            .navigationBarHidden(true)
//        }
//        .navigationViewStyle(.stack)
//    }
//}
//
//struct CustomNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomNavigationView {
//            Color.red.ignoresSafeArea()
//        }
//    }
//}
//
//extension UINavigationController {
//    open override func viewDidLoad() {
//        super.viewDidLoad()
//        interactivePopGestureRecognizer?.delegate = nil
//    }
//}
