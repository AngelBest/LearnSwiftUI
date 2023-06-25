//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by 宋秀腾 on 2023-06-25.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let coordinate = CLLocationCoordinate2DMake(34.011286, -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        guard let view = uiView as? MKMapView else { return }
        view.setRegion(region, animated: true)
    }
    
}

