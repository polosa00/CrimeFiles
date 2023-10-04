//
//  CustomNavBarView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 4.10.23.
//

import SwiftUI

struct CustomNavBarView: View {
    @Environment(\.dismiss) var dismiss
    let showBackButton: Bool
    let title: String
    let subtitle: String?
    let imageTitle: String
    
    var body: some View {
        HStack {
            
            if showBackButton{
                backButton
            }
            Spacer()
            titleSection
            
            Spacer()
            Spacer()
            if showBackButton {
                backButton
                    .opacity(0)
            }

        }
        .padding()
        .tint(.white)
        .foregroundColor(.white )
        .font(.headline)
        .background(
            Color.blue.ignoresSafeArea(edges: .top)
        )
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView(showBackButton: true, title: "Title", subtitle: "Subtitle goes here", imageTitle: "detective3")
            Spacer()
        }
    }
}

extension CustomNavBarView {
    private var backButton: some View {
        Button {
            dismiss.callAsFunction()
        } label: {
            Image(systemName: "chevron.left")
        }
        
    }
    
    private var titleSection: some View {
        HStack {
            Image(imageTitle)
                .resizable()
                .frame(width: 55, height: 55)
            
            VStack(spacing: 4) {
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
                if let subtitle = subtitle {
                    Text(subtitle)
                }
                
            }
        }
    }
}
