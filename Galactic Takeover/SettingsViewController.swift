//
//  SettingsViewController.swift
//  Galactic Takeover
//
//  Created by Rachel Bright on 11/11/19.
//  Copyright © 2019 Rachel Bright. All rights reserved.
//

import UIKit

// Settings View Controller
class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Check mute switch state
        MuteMusic.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
    
    // Initialize mute music switch
    @IBOutlet weak var MuteMusic: UISwitch!
    
    // If the switch is on, music is muted. Otherwise, the music starts.
    @objc func stateChanged(switchState: UISwitch) {
        if MuteMusic.isOn {
            MusicPlayer.shared.stopBackgroundMusic()
        }
        else{
            MusicPlayer.shared.startBackgroundMusic()
        }
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
