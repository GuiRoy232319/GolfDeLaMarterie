//
//  VideoPlayerView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 07/02/2024.
//

import SwiftUI
import AVFoundation
import AVKit
struct LocalVideoView: View {
    let videoFilename: String
    let videoExtension: String

    var body: some View {
        VStack {
            if let videoURL = Bundle.main.url(forResource: videoFilename, withExtension: videoExtension) {
                AVPlayerVideoPlayer(videoURL: videoURL)
                    .frame(width: 354, height: 199)
                    .cornerRadius(15)
                    .shadow(radius: 20)
                
               
            } else {
                Text("La vidéo n'a pas pu être chargée.")
            }
        }
    }
}
struct VideoPlayerView: View {
    let videoID: String
       var body: some View {
          LocalVideoView(videoFilename: videoID, videoExtension: "mp4")
        }
    }
       
#Preview {
    VideoPlayerView(videoID:"video1")
}
