//
//  InspectionView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 1.10.23.
//

import SwiftUI

struct InspectionView: View {
    
    @State var listInspection = ["Row 1", "Row 2", "Row 3", "Row 4"]
    
    @State var title = "Title"
    var body: some View {
        NavigationStack {
            
            ZStack {
                BackgroundView()
                
                List(listInspection, id: \.self) { rowinspection in
                    NavigationLink {
                        FinishView()
                    } label: {
                        Text(rowinspection)
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
