//
//  CellView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 26.09.2023.
//

import SwiftUI

struct CellView: View {
    let title: String
    let imageName: String
    
    var body: some View {
        ZStack {
            HStack{
                Spacer()
                Image(imageName)
                    .resizable()
                    .frame(width: 45, height: 45)
                Spacer()
                Text(title)
                    .font(.custom("AlegreyaSC-Medium", size: 24))
                    .padding(10)
                Spacer()
            }
            //.background(
//                LinearGradient(
//                gradient: Gradient(
//                    colors: [
//                        Color(red: 241 / 255, green: 231 / 255, blue: 196 / 255, opacity: 0.6),
//                        Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5),
//                        Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.6)
//                    ]
//                ),
//                startPoint: .top,
//                endPoint: .bottom
//            )
//            )
//            .cornerRadius(10)
//            .padding(8)
        }
     //   .background(Color.clear)
        
        
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(title: "Osmotr", imageName: "detective")
    }
}
