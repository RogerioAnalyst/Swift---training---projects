//
//  ViewController.swift
//  Xylophone
//
//  Created by Rogerio Cardoso on 29/04/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Caction(_ sender: Any) {
        playSound(typeOfLetter: (sender as AnyObject).currentTitle ?? "")
    }
    
    func playSound(typeOfLetter: String) {
        guard let path = Bundle.main.path(forResource: typeOfLetter, ofType:"wav") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
