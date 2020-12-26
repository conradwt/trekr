//
//  Locations.swift
//  Trekr
//
//  Created by Conrad Taylor on 12/25/20.
//

import Foundation

class Locations: ObservableObject {
  let places: [Location]
  
  var primary: Location {
    places[0]
  }
  
  init() {
    let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    places = try! JSONDecoder().decode([Location].self, from: data)
  }
}
