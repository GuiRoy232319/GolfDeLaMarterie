//
//  GaugeView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI

struct GaugeView: View {
    var diameter: CGFloat
    var progress: Double
    @State private var currentProgress: Double = 0
    var color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 15)
                .opacity(0.3)
                .foregroundColor(Color.gray)
                .shadow(color: color , radius: 5)
            Circle()
                .trim(from: 0.0, to: (min(self.currentProgress, 2.0)))
                .stroke(style: StrokeStyle(lineWidth: 13, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: -90))
                .foregroundColor(Color.black.opacity(0.2))
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.currentProgress, 2.0)))
                .stroke(style: StrokeStyle(lineWidth: 11, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: -90))
                .foregroundColor(color)
           
        }
        .frame(width: diameter, height: diameter)
        .onAppear {
            withAnimation(.linear(duration: 1.5)){
                self.currentProgress = progress
            }
        }
    }
}
#Preview {
    GaugeView(diameter: 100, progress: 1.78, color: .red)
}
