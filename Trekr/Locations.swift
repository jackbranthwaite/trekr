//
//  Locations.swift
//  Trekr
//
//  Created by Jack on 7/10/23.
//

import Foundation

// Additional way of creating custom data structures:
// a class is designed to be shared - throughout application.
// Load the JSON once and share throughout.
// Observeable object watches for changes in the data and updates when required

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
//  The exclamation mark is unsafe - you're guaranteeing the file will be there with that but that's not true - app will crash if the file is not there
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
