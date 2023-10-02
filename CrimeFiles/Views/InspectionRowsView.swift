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
                .padding(.top, 20)
                .navigationTitle(title)
            }
        }
    }
}

struct TestView: View {
    var body: some View {
        Text("testView")
    }
}

struct InspectionRowView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionRowsView()
    }
}
