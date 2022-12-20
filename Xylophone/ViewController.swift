//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func cPressed(_ sender: UIButton) {
        print("c")
        playSound()
    }
    

    @IBAction func dPressed(_ sender: UIButton) {
        print("d")
    }
    
    
    @IBAction func ePressed(_ sender: UIButton) {
        print("e")
    }
    
    
    @IBAction func fPressed(_ sender: UIButton) {
        print("f")
    }
    
    
    @IBAction func gPressed(_ sender: UIButton) {
        print("g")
    }
    
    
    @IBAction func aPressed(_ sender: UIButton) {
        print("a")
    }
    
    
    @IBAction func bPressed(_ sender: UIButton) {
        print("b")
    }
    
    
    func playSound() {
            let url = Bundle.main.url(forResource: "C", withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
    }
    
}

