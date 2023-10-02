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
        NavigationStack {
            ZStack{
                MainBackGroundView()
                
                List(viewModel.inspections, id: \.title) { inspectionDetailViewmodel in
                    NavigationLink {
                        InspectionView(viewModel: inspectionDetailViewmodel.rows, title: inspectionDetailViewmodel.title)
                    } label: {
                        CellView(title: inspectionDetailViewmodel.title, imageName: inspectionDetailViewmodel.imageName)
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    
                }
                .padding(.top, 150)
                .listStyle(.plain) // Устанавливаем стиль списка на plain
            
            
            }
            
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
