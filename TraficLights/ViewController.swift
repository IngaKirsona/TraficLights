//
//  ViewController.swift
//  TraficLights
//
//  Created by Inga Kirsona on 20/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    var isTapped = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        startButton.layer.cornerRadius = 70
    }

    @IBAction func StartTapped(_ sender: Any) {
        if isTapped {
            self.isTapped = true
            self.startButton.setTitle("NEXT", for: .normal)
        }
    }
    
}

