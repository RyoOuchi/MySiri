//
//  beforeViewController.swift
//  MySiri
//
//  Created by Ryo on 2020/10/03.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit

class beforeViewController: UIViewController {

    @IBOutlet weak var toTest: UIButton!
    @IBOutlet weak var learnMeaning: UIButton!
    @IBOutlet weak var labelTango: UILabel!
    var word2 = ""
    var txt = ""
    
    @IBOutlet weak var Text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toTest.layer.cornerRadius = 20
        learnMeaning.layer.cornerRadius = 20
        labelTango.text = word2
        // Do any additional setup after loading the view.
    }
    
    func showText(){
        Text.text = txt
        
    }

    @IBAction func imi() {
        showText()
    }
    
    @IBAction func results() {
        self.performSegue(withIdentifier: "testResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "testResult"{
    let vc: ViewController = (segue.destination as? ViewController)!
        vc.result = word2
    }

}
}
