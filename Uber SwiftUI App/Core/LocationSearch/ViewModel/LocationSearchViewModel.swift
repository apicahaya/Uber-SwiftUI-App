//
//  LocationSearchViewModel.swift
//  Uber SwiftUI App
//
//  Created by Agni Muhammad on 01/03/23.
//

import MapKit
import Foundation

class LocationSearchViewModel: NSObject, ObservableObject {
    // MARK: - properties
    
    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation: String?
    
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment = "" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    // MARK: - Lifecycle
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
    // MARK: - Helpers
    
    func selectLocation(_ location: String) {
        self.selectedLocation = location
        
        print("DEBUG: Selected Location is \(String(describing: self.selectedLocation))")
    }
}

// MARK: - MKLocalSearchCompleterDelegate
extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}
