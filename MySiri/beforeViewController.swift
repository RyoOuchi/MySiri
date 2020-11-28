//
//  beforeViewController.swift
//  MySiri
//
//  Created by Ryo on 2020/10/03.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit

class beforeViewController: UIViewController {

    var txt = ""
    
    @IBOutlet weak var Text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    func showText(){
        Text.text = txt
    }

    @IBAction func imi() {
        txt = "意味：午後　品詞：名詞　例文：I ate an afternoon snack"
        showText()
    }
}
