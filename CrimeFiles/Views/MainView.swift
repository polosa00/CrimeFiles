//
//  MainView.swift
//  CrimeFiles
//
//  Created by Kate Kashko on 26.09.2023.
//

import SwiftUI

struct MainView: View {
    
//    let fontSizeForRow: CGFloat = 20
//    let title: String
//    let imageName: String
    
    @StateObject private var viewModel = InspectionViewModel()
    
    var body: some View {
        ZStack {
             
          
            NavigationStack {
                ZStack{
                    
                    MainBackGroundView()
                        .ignoresSafeArea()

                    List(viewModel.inspections, id: \.title) { inspectionDetailViewmodel in
                        
                        
                        NavigationLink {
                            InspectionRowsView(
                                viewModel: inspectionDetailViewmodel.rows,
                                title: inspectionDetailViewmodel.title,
                                imageTitle: inspectionDetailViewmodel.titleImage
                                
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
                    .padding(.top, 130)
                    .listStyle(.plain) // Устанавливаем стиль списка на plain
                }
                .customNavigationBarBackButtonHidden(true)
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
