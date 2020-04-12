//
//  PlacesList.swift
//  GoogleMapsWithSwiftUISample
//
//  Created by Alexander Fanaian on 4/12/20.
//  Copyright © 2020 Practice. All rights reserved.
//

import SwiftUI

struct PlacesList: View {
    // 1
    @ObservedObject private var placesManager = PlacesManager()
    
    var body: some View {
        NavigationView {
            // 2
            List(placesManager.places, id: \.place.placeID) { placeLikelihood in
                // 3
                PlaceRow(place: placeLikelihood.place)
            }
            .navigationBarTitle("Nearby Locations")
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
