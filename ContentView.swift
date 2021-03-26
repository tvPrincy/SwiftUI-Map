//
//  ContentView.swift
//  MapView
//
//  Created by Kevin Baldha on 18/03/21.
//

import SwiftUI
import MapKit

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}
struct ContentView: View {
    @State var coordinateRegion: MKCoordinateRegion = {
        var newRegion = MKCoordinateRegion()
        newRegion.center.latitude = 22.2587
        newRegion.center.longitude = 71.1924
        newRegion.span.latitudeDelta = 0.2
        newRegion.span.longitudeDelta = 0.2

        return newRegion
    }()
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 22.3039, longitude: 70.8022)),
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 23.0225, longitude: 72.5714)),
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 22.4707, longitude: 70.0577)),
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 21.1702, longitude: 72.8311)),
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 23.2156, longitude: 72.6369)),
    ]
    var body: some View {
        VStack {
            Text("Hello, world!").padding()
            MapView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
