//
//  InformationRowView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 2.10.23.
//

import SwiftUI

struct InformationRowView: View {
        
    var rowsDetails: [RowDetailInspection]
    var title: String
    var imageTitle:String
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                BackgroundView()
                    .ignoresSafeArea()
                
                List {
                    ForEach(rowsDetails, id: \.title) { information in
                        NavigationLink {
                            InformationView(title: information.title, mainText: information.data)
                        } label: {
                            CellView(title: information.title, imageName: information.imageName)
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                }
                .listStyle(.plain)
            }
//            .navigationTitle(title)
        }
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                VStack {
                
                        Text(title)
                            .font(.custom("AlegreyaSC-Medium", size: 22))
                            .bold()
                            .foregroundColor(.black)
                            .lineLimit(nil)
                }
                .frame(height: 90)
                
                
            }
            

        }
    }
    
}

struct InformationRowView_Previews: PreviewProvider {
    static var previews: some View {
        InformationRowView(
            rowsDetails:
                [
                    RowDetailInspection(
                        title: "Text title",
                        imageName: "testImage",
                        data: "Fill in in the future!"
                    )
                ],
            title: "Title",
            imageTitle: "titleImage"
        )
    }
}

