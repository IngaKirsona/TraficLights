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
        self.redButton.backgroundColor = UIColor.orange
        isTapped = 1
    }else if isTapped == 1 {
        self.startButton.setTitle("NEXT", for:.normal)
        redButton.backgroundColor = UIColor.red
        self.yellowButton.backgroundColor = UIColor.orange
        isTapped = 2
    }else if isTapped == 2 {
        self.startButton.setTitle("NEXT", for:.normal)
        greenButton.backgroundColor = UIColor.orange
        self.yellowButton.backgroundColor = UIColor.yellow
        isTapped = 3
    }else if isTapped == 3 {
        self.startButton.setTitle("NEXT", for:.normal)
        self.redButton.backgroundColor = UIColor.orange
        greenButton.backgroundColor = UIColor.green
        isTapped = 1
        }
    }
}
    

/*@IBAction func darkModeTapped(_ sender: Any) {
        if isOn {
            print("Dark mode on")
            self.isOn = false
            self.darkModeButton.setTitle("Dark Mode On", for: .normal)
            self.darkModeButton.setTitleColor(UIColor.white, for: .normal)
            self.view.backgroundColor = UIColor.black
        }else{
            print("Dark mode off")
            self.isOn = true
            self.darkModeButton.setTitle("Dark Mode Of", for: .normal)
            self.darkModeButton.setTitleColor(UIColor.black, for: .normal)
            self.view.backgroundColor = UIColor.white
        }
    }
}

*/
