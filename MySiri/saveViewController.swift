//
//  saveViewController.swift
//  MySiri
//
//  Created by Ryo on 2020/11/14.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit

class saveViewController: UIViewController {
    
    @IBOutlet weak var basicTango: UITextField!
    @IBOutlet weak var meaning: UITextField!
    var userDefaults: UserDefaults = UserDefaults.standard
    var tangoarray: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: Any) {
        tangoarray.append([basicTango.text!, meaning.text!])
        userDefaults.set(tangoarray, forKey: "wordlist")
        self.performSegue(withIdentifier: "toHome", sender: self)
        
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
