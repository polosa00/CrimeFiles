//
//  MainView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 26.09.2023.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var searchManager: SearchManager
    
    @StateObject private var viewModel: InspectionViewModel
    
    init(searchManager: SearchManager) {
         self._viewModel = StateObject(wrappedValue: InspectionViewModel(searchManager: searchManager))
     }

    
    var body: some View {
        CustomNavigationView {
                ZStack{
                    MainBackGroundView()
                        .ignoresSafeArea()
                    
                    VStack {
                        SearchBarView(searchManager: searchManager)
                            .padding(.top, 320)
                            .padding(.bottom, 40)
                            .frame(height: 70)
                        
                        List(viewModel.inspections, id: \.title) { inspectionDetailViewmodel in
                        NavigationLink {
                            InspectionRowsView(
                                viewModel: inspectionDetailViewmodel.rows,
                                title: inspectionDetailViewmodel.title
                            )
                        } label: {
                            CellView(
                                title: inspectionDetailViewmodel.title,
                                imageName: inspectionDetailViewmodel.imageName
                            )
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                    //.customNavigationTile("hjfhgf")
                    //.customNavigationImage("detective")
                    .padding(.top, 150)
                    .listStyle(.plain) // Устанавливаем стиль списка на plain
                }
            }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(searchManager: SearchManager())
    }
}
