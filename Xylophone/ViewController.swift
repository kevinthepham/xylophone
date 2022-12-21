//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  Kevin Pham started following tutorial 12/19/22
//

import UIKit
import AVFoundation // used to play sound

class ViewController: UIViewController {
    
    var player: AVAudioPlayer! // 12-19-22 figure out why ?/!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // called when any of the xylophone keys are pressed
    @IBAction func keyPressed(_ sender: UIButton) {
        
      playSound(soundName: sender.currentTitle!)

      //Reduces the sender's (the button that got pressed) opacity to half.
      sender.alpha = 0.5

      //Code should execute after 0.2 second delay.
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
          //Bring's sender's opacity back up to fully opaque.
          sender.alpha = 1.0
      }
    }


    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
    }
    
    func dimKey() {
        
    }
    
}

