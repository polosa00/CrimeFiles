//
//  InformationView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 2.10.23.
//

import SwiftUI

struct InformationView: View {
    @State var title = "Title"
    @State var mainText = "Text text Text textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText textText text"
    
    var body: some View {
        ZStack {
            BackgroundView()
                .ignoresSafeArea()
            NavigationStack {
                ScrollView {
                    VStack(){
                        Text(mainText)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding(.top,20)
                            .padding()
                        Spacer()
                    }
                    .background(content: {
                        Color.gray.opacity(0.8)
                    })
                    .cornerRadius(15)
//                    .navigationTitle(title)
                    .padding()
                    .shadow(color: .gray.opacity(0.6) ,radius: 10, x: 5, y: 15)
                    
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    VStack {
                            HStack {
//                            Image("detective")
//                                .resizable()
//                                .frame(width: 55, height: 55)
                            Text(title)
                                .font(.title3)
                                .foregroundColor(.black)
                                .bold()
                                .frame(maxHeight: .infinity)
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
