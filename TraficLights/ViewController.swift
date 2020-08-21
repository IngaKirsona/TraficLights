//
//  ViewController.swift
//  TraficLights
//
//  Created by Inga Kirsona on 20/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redButton: UIView!
    @IBOutlet weak var yellowButton: UIView!
    @IBOutlet weak var greenButton: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    var isTapped = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        redButton.layer.cornerRadius = 50
        yellowButton.layer.cornerRadius = 50
        greenButton.layer.cornerRadius = 50
    }
   
    @IBAction func startButton(_ sender: Any) {
    if isTapped == 0 {
        self.startButton.setTitle("NEXT", for:.normal)
        self.redButton.backgroundColor = UIColor.red
        self.yellowButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        self.greenButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        isTapped = 1
    }else if isTapped == 1 {
        self.startButton.setTitle("NEXT", for:.normal)
        self.yellowButton.backgroundColor = UIColor.yellow
        redButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        self.greenButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        isTapped = 2
    }else if isTapped == 2 {
        self.startButton.setTitle("NEXT", for:.normal)
        self.greenButton.backgroundColor = UIColor.green
        self.redButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        self.yellowButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        isTapped = 3
    }else if isTapped == 3 {
        self.startButton.setTitle("NEXT", for:.normal)
        self.redButton.backgroundColor = UIColor.red
        self.yellowButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        self.greenButton.backgroundColor = UIColor (white: 1, alpha: 0.1)
        isTapped = 1
        }
    }
}
    
