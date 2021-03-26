//
//  LandmarkAnnotation.swift
//  MapView
//
//  Created by Kevin Baldha on 18/03/21.
//

import Foundation
import MapKit

class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D

    init(title: String?,
         subtitle: String?,
         coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
    static func requestMockData()-> [LandmarkAnnotation]{
        return [
            LandmarkAnnotation(title: "Rajkor",
                               subtitle:"",
                               coordinate: .init(latitude: 22.3039, longitude: 70.8022)),
            LandmarkAnnotation(title: "Ahmedabad",
                               subtitle:"",
                               coordinate: .init(latitude: 23.0225, longitude: 72.5714)),
            LandmarkAnnotation(title: "Jamnagar",
                               subtitle:"",
                               coordinate: .init(latitude: 22.4707, longitude: 70.0577)),
            LandmarkAnnotation(title: "Surat",
                               subtitle:"",
                               coordinate: .init(latitude: 21.1702, longitude: 72.8311)),
            LandmarkAnnotation(title: "Gandhinagar",
                               subtitle:"",
                               coordinate: .init(latitude: 23.2156, longitude: 72.6369)),
        ]
    }
}
