//
//  InspectionListView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 1.10.23.
//

import SwiftUI

struct InspectionListView: View {
    
    //поменять на @ObservedObject
    
    var inspectionList: [RowInspection]
    var title: String
    var imageTitle: String
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                    .ignoresSafeArea()
                List(inspectionList, id: \.title) { inspection in
                   
                    NavigationLink {
                        
                        if inspection.rowsDetails == nil {
                            InformationView(
                                title: inspection.title,
                                mainText: inspection.data
                            )
                        } else {
                            InformationRowView(rowsDetails: inspection.rowsDetails ??
                                [RowDetailInspection(title: "Test", imageName:  "testImage", data: "Some data..." )],
                            title: inspection.title
                            )
                            
                        }
                    } label: {
                        CellView(
                            title: inspection.title,
                            imageName: inspection.imageName
                        )
                        
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
        }
        .tint(.black)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                HStack {
                    
                    Image(imageTitle)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(title)
                        .font(.custom("AlegreyaSC-Medium", size: 22))
                        .bold()
                        .lineSpacing(0)
                        .foregroundColor(.black)
                        .lineLimit(nil)
                }
                .frame(height: 90)  // строка не съедается
            }
            
        }
    }
}

struct TestView: View {
    var body: some View {
        Text("testView")
    }
}

struct InspectionListView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionListView(
            inspectionList:
                [
                    RowInspection(
                        title: "Камеры видеонаблюдения",
                        imageName: "testImage",
                        rowsDetails: [
                            RowDetailInspection(title: "Title", imageName: "testImage", data: "Some data...!")
                        ],
                        data: "Some data...")
                ],
            title: "There will be Title",
            imageTitle: "String name for image"
        )
    }
}
