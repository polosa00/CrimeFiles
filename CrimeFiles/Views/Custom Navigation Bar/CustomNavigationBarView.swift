//
//  CustomNavigationBarView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 4.10.2023.
//

import SwiftUI

struct CustomNavigationBarView: View {
    
    @Environment(\.presentationMode) var presentationMode
    let  showBackButton: Bool
    let title: String
    let  imageName: String
    
    var body: some View {
        HStack{
            if showBackButton {
                backButton
            }
            Spacer()
            titleImage
            Spacer()
            titleSection
            Spacer()
            
        }
        .padding()
        .background(
            Color.clear.ignoresSafeArea(edges: .top)) //Прозрачность navigation bar здесь
        
    }
}

struct CustomNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomNavigationBarView(
                showBackButton: true,
                title: "Title",
                imageName: "detective1"
            )
            Spacer()
        }
    }
}

extension CustomNavigationBarView {
    
    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .tint(.black)
        })
    }
    
    private var titleImage:  some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70)
    }
    
    private var titleSection:  some View {
        Text(title)
            .font(.custom("AlegreyaSC-Medium", size: 18))
            .multilineTextAlignment(.center)
    }
}
