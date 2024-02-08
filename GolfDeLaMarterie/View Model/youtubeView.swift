//
//  youtubeView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 07/02/2024.
//

import SwiftUI
import WebKit

struct YouTubeVideoPlayer: UIViewRepresentable {
    let videoID: String
    var onVideoLoaded: (() -> Void)? = nil

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.configuration.allowsInlineMediaPlayback = true
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)?playsinline=1") else {
            return webView
        }
        let request = URLRequest(url: youtubeURL)
        webView.load(request)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

#Preview {
    YouTubeVideoPlayer(videoID: "PeWkgcpb93w")
       
}
