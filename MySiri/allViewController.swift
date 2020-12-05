//
//  allViewController.swift
//  MySiri
//
//  Created by Ryo on 2020/10/29.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit
class allViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    var tango = [[String]]()
    var word = ""
    var mean = ""
    var userDefaults: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        table.dataSource = self
        table.delegate = self

        tango = userDefaults.array(forKey: "wordlist") as? [[String]] ?? []
        self.table.reloadData()
    }

       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tango.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = tango[indexPath.row][0]
               return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         word = tango[indexPath.row][0]
         mean = tango[indexPath.row][1]
        self.performSegue(withIdentifier: "yay", sender: self)
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yay"{
        let bvc: beforeViewController = (segue.destination as? beforeViewController)!
            bvc.word2 = word
            bvc.txt = mean
        }
        
        

   
    }}
