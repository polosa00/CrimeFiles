//
//  InformationRowView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 2.10.23.
//

import SwiftUI

struct InformationRowView: View {
    @State var rowsDetails: [RowDetailInspection] = [
        RowDetailInspection(title: "Text title", imageName: "testImage", data: "Fill in in the future!")
    ]
    @State var title = "Title"
    @State var imageTitle = "ii"
    
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
                    HStack {
                        //                        Image(imageTitle)
                        //                            .resizable()
                        //                            .frame(width: 55, height: 55)
                        Text(title)
                            .font(.custom("AlegreyaSC-Medium", size: 22))
                            .bold()
//                            .frame(maxHeight: 100)
                            .foregroundColor(.black)
                            .lineLimit(nil)
                    }
                }
                .frame(height: 90)
                .background(.red)
                
                
            }
            

        }
    }
    
}

struct InformationRowView_Previews: PreviewProvider {
    static var previews: some View {
        InformationRowView()
    }
}
