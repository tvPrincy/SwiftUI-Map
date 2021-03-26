//
//  MapViewCoordinator.swift
//  MapView
//
//  Created by Kevin Baldha on 18/03/21.
//

import Foundation
import MapKit

/*
  Coordinator for using UIKit inside SwiftUI.
 */
class MapViewCoordinator: NSObject, MKMapViewDelegate {
    
      var mapViewController: MapView
        
      init(_ control: MapView) {
          self.mapViewController = control
      }
        
      func mapView(_ mapView: MKMapView, viewFor
           annotation: MKAnnotation) -> MKAnnotationView?{
         //Custom View for Annotation
          let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
          annotationView.canShowCallout = true
          //Your custom image icon
        annotationView.image = UIImage(named: "pin")
          return annotationView
       }
}
