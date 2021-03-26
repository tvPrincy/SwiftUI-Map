//
//  MapView.swift
//  MapView
//
//  Created by Kevin Baldha on 18/03/21.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    
    let landmarks = LandmarkAnnotation.requestMockData()
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator(self)
    }
    
    /**
     - Description - Replace the body with a make UIView(context:) method that creates and return an empty MKMapView
     */
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        //If you changing the Map Annotation then you have to remove old Annotations
        //mapView.removeAnnotations(mapView.annotations)
        view.delegate = context.coordinator
        view.addAnnotations(landmarks)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
