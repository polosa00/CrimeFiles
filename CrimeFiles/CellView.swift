//
//  CellView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 26.09.2023.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        
        HStack{
            Spacer()
            Image("bag")
                .resizable()
                .frame(width: 45, height: 45)
            Spacer()
            Text("Подготовка к осмотру места происшествия")
                .font(.custom("AlegreyaSC-Medium", size: 24))
                .padding(10)
            Spacer()
        }
        .background(LinearGradient(
            gradient: Gradient(
                colors: [
                    Color(red: 241 / 255, green: 231 / 255, blue: 196 / 255, opacity: 0.6),
                    Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5),
                    Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.6)
                ]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
        )
        .cornerRadius(10)
        .padding(8)
        
        
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}
