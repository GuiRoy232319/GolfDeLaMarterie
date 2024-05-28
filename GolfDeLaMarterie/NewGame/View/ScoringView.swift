//
//  ScoringView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 24/04/2024.
//

import SwiftUI
import MapKit
import CoreLocation

struct ScoringView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 44.99912, longitude: 0.87822),
           span: MKCoordinateSpan(latitudeDelta: 0.025, longitudeDelta: 0.025)
       )
    @State private var data = LaMarterie
    
    var body: some View {
        TabView {
            ForEach(data) { item in
                VStack{
                    if let userLocation = locationManager.location{
                        Map()
                            .onAppear{
                                mapRegion.center = userLocation
                            }
                            .mapStyle(.hybrid)
                            .frame(width: 350, height: 200)
                            .cornerRadius(30)
                            .padding(.top,40)
                    }
                    Divider()
                    HStack{
                        Text("Trou n°")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                        Text("\(item.numTrou!)")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .foregroundColor(.red)
                        Text("Par:")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .padding(.leading, 30)
                        Text("\(item.parTrou!)")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
                    HStack{
                        Text("HCP:")
                            .bold()
                        Text("\(item.HCP!)")
                            .bold()
                            .italic()
                        Text("Profondeur Green:")
                            .bold()
                        Text("\(item.Greenprof!)m")
                            .bold()
                            .italic()
                    }
                    HStack{
                        if let userLocation = locationManager.location{
                            Text("Entrée de green \(Int(calculateDistance(from: userLocation, to: item.greenIn!)))m")
                                .bold()
                                .italic()
                            Text("Sortie de green \(Int(calculateDistance(from: userLocation, to: item.greenOut!)))m")
                                .bold()
                                .italic()
                        }
                    }
                    Divider()
                    VStack{
                        Text("""
                        \(item.advice!)
                        """
                        )
                        .multilineTextAlignment(.center)
                        .italic()
                        .bold()
                        .dynamicTypeSize(.medium)
                        PlayerScoring()
                            .shadow(color:.black ,radius: 5)
                    }
                }
                .background {
                    Color(.systemGray3)
                        .blur(radius: 10)
                }
            }
        }.tabViewStyle(.page)
            .ignoresSafeArea(edges: .top)
    }
    private func calculateDistance(from userLocation: CLLocationCoordinate2D, to destination: CLLocationCoordinate2D) -> Double {
          let userLocation = CLLocation(latitude: userLocation.latitude, longitude: userLocation.longitude)
          let destinationLocation = CLLocation(latitude: destination.latitude, longitude: destination.longitude)
          let distance = userLocation.distance(from: destinationLocation) // Distance in meters
          return distance
      }
}

struct ScoringView_Previews: PreviewProvider {
    static var previews: some View {
        ScoringView()
    }
}
