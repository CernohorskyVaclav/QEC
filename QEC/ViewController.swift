//
//  ViewController.swift
//  QEC
//
//  Created by Václav Černohorský on 05/05/2020.
//  Copyright © 2020 Václav Černohorský. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var a: Double = 0.0
    var b: Double = 0.0
    var c: Double = 0.0
    var result: Double = 0.0
    var result2: Double = 0.0
    var diskriminant: Double = 0.0
    
    @IBOutlet weak var aTF: UITextField!
    @IBOutlet weak var bTF: UITextField!
    @IBOutlet weak var cTF: UITextField!
    @IBOutlet weak var ResultTF: UILabel!
    @IBOutlet weak var ResultTF2: UILabel!
    
    @IBAction func Calculate(_ sender: Any) {
        a = Double(aTF.text!)!
        b = Double(bTF.text!)!
        c = Double(cTF.text!)!
        
        diskriminant = b * b - (4.0 * a * c)
        
        if(diskriminant > 0.0) {
            result = (-b + pow(diskriminant, 0.5)) / (2.0 * a)
            result2 = (-b - pow(diskriminant, 0.5)) / (2.0 * a)
            ResultTF.text = String(result)
            ResultTF2.text = String(result2)
        } else if(diskriminant == 0.0) {
            result = -b / (2.0 * a)
            ResultTF.text = String(result)
            ResultTF2.text = ""
        } else {
            ResultTF.text = "Root"
            ResultTF2.text = "Nonexistent"
        }
        
        //ResultTF.text = String(result)
    }
    
    @IBAction func Clear(_ sender: Any) {
        aTF.text = ""
        bTF.text = ""
        cTF.text = ""
        ResultTF.text = ""
        ResultTF2.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

