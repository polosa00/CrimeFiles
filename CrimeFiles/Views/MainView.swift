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
             
          
            
            
            CustomNavigationView {
                ZStack{
//                    MainBackGroundView()
//                        .ignoresSafeArea()


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
//                    .customNavigationTile("hjfhgf")
//                    .customNavigationImage("detective")
                    .padding(.top, 30)
                    .listStyle(.plain) // Устанавливаем стиль списка на plain
                }
                .customNavigationBarBackButtonHidden(true)
            }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
