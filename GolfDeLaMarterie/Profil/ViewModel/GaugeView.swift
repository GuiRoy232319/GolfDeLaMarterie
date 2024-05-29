//
//  GaugeView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI

//------------------
//MARK: Model Gauge
//------------------
struct GaugeView: View {
    @State private var currentProgress: Double = 0
    var gradient = Gradient(colors: [.blue, .green, .red])
    var progress: Double
    var par : Int = 3

    var body: some View {
        VStack{
            Gauge(
                value: currentProgress,
                in:0...Double((par * 2)) ,
                label: {
                    Text("Score moyen par \(par)")
                },

                currentValueLabel: {  Text(String(format: "%.1f", Float(round(progress * 10) / 10))) },
                minimumValueLabel: { Text("0") },
                maximumValueLabel: { Text("\(par * 2)") }
            )
            .tint(gradient)
        }
        .onAppear {
            withAnimation(.linear(duration: 1.5)){
                self.currentProgress = progress
            }
        }
    }
}
#Preview {
    GaugeView(progress: 3.5, par: 3)
}
