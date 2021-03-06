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
    
    @IBOutlet weak var said: UILabel!
    let synthesizer = AVSpeechSynthesizer()
    let voiceOverlay = VoiceOverlayController()
    @IBOutlet var myButton: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet var Labeltwo: UILabel!
    
    
    var resulttest = ""
    var result = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.layer.cornerRadius = 15
        myButton.setTitleColor(.white, for: .normal)
        said.layer.cornerRadius = 30

    }
    @IBAction func didTapButton() {
        voiceOverlay.delegate = self
        voiceOverlay.settings.autoStart = false
        voiceOverlay.settings.autoStop = true
        voiceOverlay.settings.autoStopTimeout = 2
        voiceOverlay.start(on: self, textHandler: { (text, final) in
            print("voice output: \(String(describing: text))")
            if String(describing: text) == self.result {
                self.Label.text = String(describing: text)
                self.Labeltwo.text = "よくできました！"
            } else {
                self.Label.text = String(describing: text)
                self.Labeltwo.text = "もう一回やろう！"
            }
            print("voice output: is it final? \(String(describing: final))")
        }, errorHandler: { error in
            print("voice output: error \(String(describing: error))")
        }, resultScreenHandler: { (text) in
            print("Result Screen: \(text)")
        })
         
    }
    
    
}
