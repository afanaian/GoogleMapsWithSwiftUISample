//
//  GoogleMapsView.swift
//  GoogleMapsWithSwiftUISample
//
//  Created by Alexander Fanaian on 4/12/20.
//  Copyright © 2020 Practice. All rights reserved.
//

import SwiftUI
import GoogleMaps

struct GoogleMapsView: UIViewRepresentable {
    // 1
    @ObservedObject var locationManager = LocationManager()
    private let zoom: Float = 15.0
    
    // 2
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        return mapView
    }
    
    // 3
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        //        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
        //        mapView.camera = camera
        mapView.animate(toLocation: CLLocationCoordinate2D(latitude: locationManager.latitude, longitude: locationManager.longitude))
    }
}

struct GoogleMapsView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapsView()
    }
}
