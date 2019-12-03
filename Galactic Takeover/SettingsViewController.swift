//
//  SettingsViewController.swift
//  Galactic Takeover
//
//  Created by Rachel Bright on 11/11/19.
//  Copyright © 2019 Rachel Bright. All rights reserved.
//

import UIKit
import PDFKit

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
    
    // Open User Manual PDF
    @IBAction func openHowToPlayPDF(_ sender: Any) {
        // Add PDFView to view controller.
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        // Fit content in PDFView.
        pdfView.autoScales = true
        
        // Load user_manual.pdf file from app bundle.
        let fileURL = Bundle.main.url(forResource: "user_manual", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
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
