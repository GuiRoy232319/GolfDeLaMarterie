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
    @State private var data = LaMarterie

    var body: some View {
        TabView {
            ForEach(data) { item in
                VStack{
                    LocalVideoView(videoFilename: item.holeBG!, videoExtension: "mp4")
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
                            .foregroundColor(.red)
                            .bold()
                            .italic()
                        Text("Profondeur Green:")
                            .bold()
                        Text("\(item.Greenprof!)m")
                            .foregroundColor(.red)
                            .bold()
                            .italic()
                    }
                    HStack{
                        if let userLocation = locationManager.location{
                            HStack{ 
                                Text("Entrée de green:")
                                    .bold()
                                    .italic()
                                Text("\(Int(calculateDistance(from: userLocation, to: item.greenIn!)))m")
                                    .foregroundColor(.blue)
                                    .bold()
                                    .italic()
                            }
                            HStack{
                                Text("Sortie de green:")
                                    .bold()
                                    .italic()
                                Text(" \(Int(calculateDistance(from: userLocation, to: item.greenOut!)))m")
                                    .foregroundColor(.blue)
                                    .bold()
                                    .italic()
                            }
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
