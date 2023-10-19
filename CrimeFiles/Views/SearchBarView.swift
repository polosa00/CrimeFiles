//
//  SearchBarView.swift
//  CrimeFiles
//
//  Created by Igor on 06.10.2023.
//

import SwiftUI

struct SearchBarView: View {
    @ObservedObject var searchManager: SearchManager
    
    private let customColor: Color = .black.opacity(0.8)
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchManager.searchText.isEmpty
                    ? .secondary
                    : customColor
                )
            TextField("Поиск...", text: Binding(
                get: { self.searchManager.searchText },
                set: { self.searchManager.searchText = $0 }
            ))
                .foregroundColor(customColor)
                .autocorrectionDisabled(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(customColor)
                        .opacity(
                            searchManager.searchText.isEmpty ? 0.0 : 1.0)
                    
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchManager.searchText = ""
                        }
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.white.opacity(0.5))
                .shadow(
                    color: .black.opacity(0.15),
                    radius: 10
                )
                .frame(height: 40)
        )
        .padding()
        
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchManager: SearchManager())
    }
}
