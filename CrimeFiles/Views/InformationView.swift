//
//  InformationView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 2.10.23.
//

import SwiftUI

struct InformationView: View {
    @State var title = "Title"
    @State var mainText = "Text text"
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                    .ignoresSafeArea()
                VStack{
                    Text(mainText)
                        .frame(maxWidth: .infinity)
                        .frame(alignment: .center)
                        .foregroundColor(.black)
                    Spacer()
                }
                .navigationTitle(title)
            }
            .background(Color.clear)
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
