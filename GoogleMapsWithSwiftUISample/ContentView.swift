//
//  ContentView.swift
//  GoogleMapsWithSwiftUISample
//
//  Created by Alexander Fanaian on 4/12/20.
//  Copyright © 2020 Practice. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GoogleMapsView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            PlacesList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
