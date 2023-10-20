//
//  MainView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 26.09.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = InspectionViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                ZStack{
                    
                    MainBackGroundView()
                        .ignoresSafeArea()

                    List(viewModel.inspections, id: \.title) { inspectionDetailViewModel in
                        NavigationLink {
                            InspectionListView(
                                inspectionList: inspectionDetailViewModel.rows,
                                title: inspectionDetailViewModel.title,
                                imageTitle: inspectionDetailViewModel.titleImage
                            )
                            
                        } label: {
                            CellView(
                                title: inspectionDetailViewModel.title,
                                imageName: inspectionDetailViewModel.imageName
                            )
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                    .padding(.top, 100)
                    .listStyle(.plain)
                    
                }
                .customNavigationBarBackButtonHidden(false)
            }
            .tint(.black)
            
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
