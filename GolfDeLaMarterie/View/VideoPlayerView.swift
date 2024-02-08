//
//  VideoPlayerView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 07/02/2024.
//

import SwiftUI

struct VideoPlayerView: View {
    let item : String
    
    var body: some View {
        YouTubeVideoPlayer(videoID: item)
            .navigationBarTitle("Lecture vidéo")
    }
}

#Preview {
    VideoPlayerView(item: "eaSpRHYg2xw")
}
