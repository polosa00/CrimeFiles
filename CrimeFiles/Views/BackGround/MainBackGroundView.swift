//
//  MainBackGroundView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 29.09.2023.
//

import SwiftUI

struct MainBackGroundView: View {
    var body: some View {
        
        ZStack{
            BackgroundView()
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image("clip")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: UIScreen.main.bounds.size.width / 10)
                    
                    Spacer()
                    Image("topSecret")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: UIScreen.main.bounds.size.width / 3)
                        .opacity(0.6)
                        .rotationEffect(Angle(degrees: 8))
                        .padding(.top, -15)
                    
                }
                Spacer()
            }
            .padding(.horizontal)
            VStack{
                Image("CrimeFiles")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 1.6)
                    .padding(.top, 80)
                Spacer()
                Image("detective")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 4)
                    .padding(.bottom, 20)
                
            }
        }
    }
}

struct MainBackGroundView_Previews: PreviewProvider {
    static var previews: some View {
        MainBackGroundView()
    }
}
