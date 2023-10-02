//
//  InspectionView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 1.10.23.
//

import SwiftUI

struct InspectionView: View {
    
    @State var viewModel: [RowInspection] = [RowInspection(title: "Камеры видеонаблюдения", imageName: "klk")]
    @State var title = "Title"
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                BackgroundView()
                    .ignoresSafeArea()
                
                List(viewModel, id: \.title) { rowInspection in
                    NavigationLink {
                        FinishView(title: rowInspection.title)
                    } label: {
                        CellView(title: rowInspection.title, imageName: rowInspection.imageName)
                    }
                    .listRowBackground(Color.clear)
                }
                .listStyle(.plain)
                .padding(.top, 20)
                .navigationTitle(title)
        }
        }
    }
}

struct FinishView: View {
    @State var title = ""
    var body: some View {
        Text(title)
    }
}

struct InspectionView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionView()
    }
}
