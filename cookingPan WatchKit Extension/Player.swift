//
//  Player.swift
//  cookingPan WatchKit Extension
//
//  Created by Paolo Sito on 22/01/2020.
//  Copyright © 2020 Vincenzo Manno. All rights reserved.
//

import UIKit
import WatchKit
import AVFoundation

class Player: WKInterfaceController {
    
    var is_playing:Bool = false
    var is_paused:Bool = false
    
    override func willActivate() {
        super.willActivate()
        self.setTitle(text4)
    }
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var myPlayButton: WKInterfaceGroup!
    
    
    @IBAction func back10() {
        player.play()
        
        if(is_playing == false)
        {
            if(is_paused == true)
            {
                player.play()
                myPlayButton.setBackgroundImage(UIImage(named: "Pause.png"))
                 NotificationCenter.default.addObserver(self, selector: Selector(("playerDidFinishPlaying:")), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player)
                is_playing = true
                is_paused = false
            }
            else
            {
                player.play()
                myPlayButton.setBackgroundImage(UIImage(named: "Pause.png"))
                 NotificationCenter.default.addObserver(self, selector: Selector(("playerDidFinishPlaying:")), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player)
                is_playing = true
            }
                
        }
        
        player.currentTime = player.currentTime - 10
    }
    
    @IBAction func playbutton() {
        if(is_playing == false)
        {
            if(is_paused == true)
            {
                player.play()
                myPlayButton.setBackgroundImage(UIImage(named: "Pause.png"))
                 NotificationCenter.default.addObserver(self, selector: Selector(("playerDidFinishPlaying:")), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player)
                is_playing = true
                is_paused = false
            }
            else
            {
                player.play()
                myPlayButton.setBackgroundImage(UIImage(named: "Pause.png"))
                 NotificationCenter.default.addObserver(self, selector: Selector(("playerDidFinishPlaying:")), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player)
                is_playing = true
            }
                
        }
        else
        {
            myPlayButton.setBackgroundImage(UIImage(named: "Play.png"))
            is_playing = false
            is_paused = true
            player.pause()
        }
        
    }
    
    @IBAction func forward10() {
        player.play()
        
        if(is_playing == false)
        {
            if(is_paused == true)
            {
                player.play()
                myPlayButton.setBackgroundImage(UIImage(named: "Pause.png"))
                 NotificationCenter.default.addObserver(self, selector: Selector(("playerDidFinishPlaying:")), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player)
                is_playing = true
                is_paused = false
            }
            else
            {
                player.play()
                myPlayButton.setBackgroundImage(UIImage(named: "Pause.png"))
                 NotificationCenter.default.addObserver(self, selector: Selector(("playerDidFinishPlaying:")), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player)
                is_playing = true
            }
                
        }
        player.currentTime = player.currentTime + 10
    }
    
    
    
    
    override func awake(withContext context: Any?) {
        do
        {
            let audioPath = Bundle.main.path(forResource: "ricetta", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        
        catch
        {
        //ERROR
        }
    }
    
    
//    func play(url: NSURL) {
//        let item = AVPlayerItem(url: "")
//
//
//
//        let player = AVPlayer(playerItem: item)
//        player.play()
//    }

    func playerDidFinishPlaying(note: NSNotification) {
        myPlayButton.setBackgroundImage(UIImage(named: "Play.png"))
    }
        
       
    
    
    
    

}

