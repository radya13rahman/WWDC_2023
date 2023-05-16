//
//  PlaySound.swift
//  About Protein
//
//  Created by Radya Amirur Rahman on 19/04/23.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

func playSound(sound: String) {
    let url = Bundle.main.url(forResource: sound, withExtension: "mp3")
    
    guard url != nil else {
        return
    }
    
    do {
        
        player = try AVAudioPlayer(contentsOf: url!)
        player.volume = 0.8
        
        if sound == "BallTouch"{
            player?.play()
        
        } else if sound == "LessProtein"{
            player?.play()
            
        } else if sound == "NormalProtein"{
            player?.play()
            
        } else if sound == "MuchProtein"{
            player?.play()
        
        } else {
            player.numberOfLoops = -1
            player?.play()
        }
        
    } catch {
        print("error")
    }
    
}
