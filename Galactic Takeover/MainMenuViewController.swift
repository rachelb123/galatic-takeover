//
//  MainMenuViewController.swift
//  Galactic Takeover
//
//  Created by Rachel Bright on 11/7/19.
//  Copyright © 2019 Rachel Bright. All rights reserved.
//

import UIKit

// Main Menu View Controller
class MainMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Action for hitting play game button, moves to select number of players screen
    @IBAction func PlayGameButton(_ sender: Any) {
        performSegue(withIdentifier: "MainMenuSegue", sender: self)
    }

    // Action for hitting the settings button, movings to settings screen
    @IBAction func SettingsButton(_ sender: Any) {
        performSegue(withIdentifier: "SettingsSegue", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
