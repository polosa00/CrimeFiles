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
                    .padding(.top, 100)
                    .listStyle(.plain)
                }
                .customNavigationBarBackButtonHidden(false)
            }
            .tint(.black)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
    //
                    
                    HStack {
                        
    //                    Image(imageTitle)
    //                        .resizable()
    //                        .aspectRatio(contentMode: .fit)
//                        Text(title)
//                            .font(.custom("AlegreyaSC-Medium", size: 22))
//                            .bold()
//    //                        .frame(maxHeight: 70)
//                            .foregroundColor(.black)
//                            .lineLimit(nil)
                        
                    }
                    .frame(height: 90)  // строка не съедается
    //                .padding(.top, 30)
                    
                    
                    

                    
                    
                }
                
            }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
