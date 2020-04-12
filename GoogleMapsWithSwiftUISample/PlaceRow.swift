//
//  PlaceRow.swift
//  GoogleMapsWithSwiftUISample
//
//  Created by Alexander Fanaian on 4/12/20.
//  Copyright © 2020 Practice. All rights reserved.
//

import SwiftUI
import GooglePlaces

struct PlaceRow: View {
    // 1
    var place: GMSPlace
    
    var body: some View {
        HStack {
            // 2
            Text(place.name ?? "")
                .foregroundColor(.white)
            Spacer()
        }
    }
}
