//
//  MusicPlayer.swift
//  Galactic Takeover
//
//  Created by Rachel Bright on 11/11/19.
//  Copyright © 2019 Rachel Bright. All rights reserved.
//

import Foundation
import AVFoundation

// Music Player class for background music
class MusicPlayer {
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?

    // Start background music
    func startBackgroundMusic() {
        // plays music from BackgroundMusic.mp3
        if let bundle = Bundle.main.path(forResource: "BackgroundMusic", ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                guard let audioPlayer = audioPlayer else { return }
                audioPlayer.numberOfLoops = -1 // loops music
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            } catch {
                print(error)
            }
        }
    }
    
    // Stop background music
    func stopBackgroundMusic() {
        guard let audioPlayer = audioPlayer else { return }
        audioPlayer.stop()
    }
    
}
