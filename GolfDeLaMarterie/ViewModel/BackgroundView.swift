//
//  BackgroundView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("Background")
        .resizable()
        .ignoresSafeArea()
        .aspectRatio(contentMode: .fill)
        .blur(radius: 3.5)
        .opacity(0.55)
    }
}

#Preview {
    BackgroundView()
}
