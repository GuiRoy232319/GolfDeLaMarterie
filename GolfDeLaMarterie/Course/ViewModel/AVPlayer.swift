//
//  AVPlayer.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 15/04/2024.
//

import SwiftUI
import AVFoundation
import AVKit
import CoreImage


//---------------------------
//MARK: Video Player Model
//---------------------------
struct AVPlayerVideoPlayer: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
    }
    
    let player: AVPlayer
    
    init(videoURL: URL) {
        self.player = AVPlayer(url: videoURL)
    }
    
    // Creating The Video Player in UI
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        player.play()
        DispatchQueue.global(qos: .background).async {
            let imageGenerator = AVAssetImageGenerator(asset: self.player.currentItem!.asset)
            imageGenerator.appliesPreferredTrackTransform = true
            
            do {
                let cgImage = try imageGenerator.copyCGImage(at: .zero, actualTime: nil)
                let uiImage = UIImage(cgImage: cgImage)
                if let dominantColor = uiImage.dominantColor {
                    DispatchQueue.main.async {
                        playerViewController.view.layer.shadowColor = UIColor(dominantColor).cgColor
                    }
                }
            } catch {
                print("Erreur lors de la récupération de l'image de la vidéo : \(error)")
            }
        }
        return playerViewController
    }
}
    
    // Rendering Border Color in function of the dominent Color in Video
extension UIImage {
    var dominantColor: Color? {
        guard let inputImage = CIImage(image: self) else { return nil }
        let extentVector = CIVector(x: inputImage.extent.size.width / 2, y: inputImage.extent.size.height / 2, z: 0, w: 0)
        guard let filter = CIFilter(name: "CIAreaAverage", parameters: [kCIInputImageKey: inputImage, kCIInputExtentKey: extentVector]), let outputImage = filter.outputImage else { return nil }
        var bitmap = [UInt8](repeating: 0, count: 4)
        let context = CIContext(options: [.workingColorSpace: kCFNull as Any])
        context.render(outputImage, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: CIFormat.RGBA8, colorSpace: nil)
        return Color(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255)
    }
}
