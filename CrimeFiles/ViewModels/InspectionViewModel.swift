//
//  InspectionViewModel.swift
//  CrimeFiles
//
//  Created by Igor on 28.09.2023.
//

import Foundation
import Combine

final class InspectionViewModel: ObservableObject {
    
    @Published private(set) var inspections: [Inspection] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    init(searchManager: SearchManager) {
        let inspectionsPublisher = Just(DataBase().inspections)
            .eraseToAnyPublisher()
        searchManager.$searchText
            .combineLatest(inspectionsPublisher)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterInspections)
            .sink { [weak self] returnedInspections in
                self?.inspections = returnedInspections
            }
            .store(in: &cancellables)
    }
    
    private func filterInspections(text: String, inspections: [Inspection]) -> [Inspection] {
        guard !text.isEmpty else {
            return inspections
        }
        
        let lowerCasedText = text.lowercased()
        return inspections.filter { inspection in
            return inspection.title.lowercased().contains(lowerCasedText)
        }
    }
    
}





