//
//  ViewController.swift
//  MySiri
//
//  Created by Ryo on 2020/09/05.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit
import InstantSearchVoiceOverlay
import AVFoundation

class ViewController: UIViewController, VoiceOverlayDelegate {
    func recording(text: String?, final: Bool?, error: Error?) {
    }
    
    let synthesizer = AVSpeechSynthesizer()
    let voiceOverlay = VoiceOverlayController()
    @IBOutlet var myButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet var labeltwo: UILabel!
    
    var resulttest = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.backgroundColor = .systemRed
        myButton.setTitleColor(.white, for: .normal)
    
       
    }
    

    
    @IBAction func didTapButton() {
        voiceOverlay.delegate = self
        voiceOverlay.settings.autoStart = false
        voiceOverlay.settings.autoStop = true
        voiceOverlay.settings.autoStopTimeout = 2
        voiceOverlay.start(on: self, textHandler: { (text, final) in
            print("voice output: \(String(describing: text))")
            self.resulttest = text
            self.label.text = self.resulttest
            if self.label.text == "Afternoon" {
                self.labeltwo.text = "!YAY!"
            }else{
                self.labeltwo.text = "もう一回やろう！"
            }
            print("voice output: is it final? \(String(describing: final))")
        }, errorHandler: { error in
            print("voice output: error \(String(describing: error))")
        }, resultScreenHandler: { (text) in
            print("Result Screen: \(text)")
        })
         
    }
}
