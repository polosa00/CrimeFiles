//
//  InspectionRowsView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 1.10.23.
//

import SwiftUI

struct InspectionRowsView: View {
    
    @State var viewModel: [RowInspection] = [
        RowInspection(
            title: "Камеры видеонаблюдения",
            imageName: "testImage",
            rowsDetails: [
                RowDetailInspection(title: "kkk", imageName: "kjj", data: "test!")
            ],
            data: "dssdfdsfs")
    ]
    @State var title = "Title"
    @State var imageTitle = "ii"
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                    .ignoresSafeArea()
                List(viewModel, id: \.title) { rowInspection in
                   
                    NavigationLink {
                        
                        if rowInspection.rowsDetails == nil {
                            InformationView(
                                title: rowInspection.title,
                                mainText: rowInspection.data
                            )
                        } else {
                            InformationRowView(rowsDetails: rowInspection.rowsDetails ?? [RowDetailInspection(title: "Test", imageName:  "Test", data: "KKK" )],
                                               title: rowInspection.title
                            )
                            
                        }
                    } label: {
                        CellView(
                            title: rowInspection.title,
                            imageName: rowInspection.imageName
                        )
                        
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
//                .padding(.top, -20)
//                .frame(height: 44)
                .navigationBarBackButtonHidden(false)
            }
        }
        .tint(.black)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                VStack {
                    HStack {
                        Image(imageTitle)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Text(title)
                            .font(.title3)
                            .foregroundColor(.black)
                            .bold()
                            .frame(maxHeight: .infinity)
                            .lineLimit(nil)
                        
                    }
                    
                }
                .frame(height: 80)
                
                
            }
            
        }
//        .toolbar {
//            ToolbarItemGroup(placement: .navigationBarLeading) {
//                VStack {
//                        HStack {
//                        Image("detective")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                        Text(title)
//                            .font(.title3)
//                            .foregroundColor(.black)
//                            .bold()
//                            .frame(maxHeight: .infinity)
//                            .lineLimit(nil)
//
//                    }
//
//                }
//                .frame(height: 80)
//
//
//            }
//
//
//        }
    }
}

struct TestView: View {
    var body: some View {
        Text("testView")
    }
}

struct InspectionRowView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionRowsView(title: "Камеры видеонаблюдения")
    }
}
