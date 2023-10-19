//
//  InformationView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 2.10.23.
//

import SwiftUI

struct InformationView: View {
    @State var title = "Title"
    @State var mainText = "Text"
    
    var body: some View {
        ZStack {
            BackgroundView()
                .ignoresSafeArea()
            NavigationStack {
                ScrollView {
                    VStack(){
                        Text(mainText)
//                            .bold()
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                            .padding(.top)
                            .padding()
                        Spacer()
                    }
                    .background(content: {
                        Color.gray.opacity(0.3)
                    })
                    .cornerRadius(15)
                    .padding(.horizontal, 10)
                    .shadow(color: .white.opacity(0.8) ,radius: 10, x: 5, y: 15)
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {

                    VStack {
                        HStack {

                            Text(title)
                                .font(.custom("AlegreyaSC-Medium", size: 22))
//                                .lineSpacing(-10)
                                .bold()
                                .frame(maxHeight: 100)
                                .foregroundColor(.black)
                                .lineLimit(nil)
                        }
                        .frame(height: 105)
                    }
                    .frame(height: 105)


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
