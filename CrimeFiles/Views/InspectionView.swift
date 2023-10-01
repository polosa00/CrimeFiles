//
//  InspectionView.swift
//  CrimeFiles
//
//  Created by Александр Полочанин on 1.10.23.
//

import SwiftUI

struct InspectionView: View {
    @State var listInspection = ["1", "2", "3", "4"]
    var body: some View {
        ZStack {
            
            List(listInspection, id: \.self) { rowinspection in
                NavigationLink {
                    FinishView()
                } label: {
                    Text("ssssss")
                }

//                Text(rowinspection)
                
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
