//
//  ViewController.swift
//  EggTimer
//
//  Created by Rogerio Cardoso on 30/05/2024.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggsTimes = [
        "Soft" : 5,
        "Medium" : 7,
        "Hard" : 12
    ]
    
    @IBAction func eggsAction(_ sender: Any) {
        guard let currentTitleButton = (sender as AnyObject).currentTitle else {
            print("Sender is invalid")
            return
        }
        
        guard let eggs = eggsTimes[currentTitleButton ?? ""] else {
            print("Not exist currrent Title")
            return
        }
        
        print(eggs)
    }
}
