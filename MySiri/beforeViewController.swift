//
//  beforeViewController.swift
//  MySiri
//
//  Created by Ryo on 2020/10/03.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit

class beforeViewController: UIViewController {

    @IBOutlet weak var labelTango: UILabel!
    var word2 = ""
    var txt = ""
    
    @IBOutlet weak var Text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    if segue.identifier == "testResults"{
    let vc: ViewController = (segue.destination as? ViewController)!
        vc.result = word2
    }

}
}
