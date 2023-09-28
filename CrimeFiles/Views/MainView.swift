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
        ZStack{
            BackgroundView()
            VStack{
                HStack{
                    Image("clip")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: UIScreen.main.bounds.size.width / 10)
                    
                    Spacer()
                    Image("topSecret")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: UIScreen.main.bounds.size.width / 3)
                        .opacity(0.6)
                        .rotationEffect(Angle(degrees: 8))
                        .padding(.top, -15)
                    
                }
                Spacer()
            }
            .padding(.horizontal)
            VStack{
                Image("CrimeFiles")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 1.6)
                    .padding(.top, 80)
                
                //MARK: - List
                ZStack {
                    
                    BackgroundView()
                    List(viewModel.inspections, id: \.title) { inspectionDetailViewmodel in
                        CellView(title: inspectionDetailViewmodel.title, imageName: inspectionDetailViewmodel.imageName)
                            
                            
                    }
                    .border(.yellow, width: 15)
                    
                    .frame(width: 300)
                    .listStyle(.plain) // Устанавливаем стиль списка на plain
                }
                .border(Color.red, width: 4)
                
                
                Spacer()
                
                Image("detective")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 4)
                    .padding(.bottom, 20)
                
            }
        }
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
