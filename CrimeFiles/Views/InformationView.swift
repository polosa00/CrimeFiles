//
//  InformationView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 2.10.23.
//

import SwiftUI

struct InformationView: View {
    @State var title = "Title"
    @State var mainText = "  Text text Text textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText text"
    
    var body: some View {
        ZStack {
            BackgroundView()
                .ignoresSafeArea()
            NavigationStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 8){
                        Text(mainText)
//                            .frame(maxWidth: .infinity)
//                            .frame(alignment: .center)
                            .foregroundColor(.white)
                            .padding(.top,20)
                            .padding()
                        Spacer()
                    }
                    .background(content: {
                        Color.gray.opacity(0.8)
                    })
                    .cornerRadius(15)
                    .navigationTitle(title)
                    .padding()
                    
                }
            }
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
