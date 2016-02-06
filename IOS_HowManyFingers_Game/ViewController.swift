//
//  ViewController.swift
//  IOS_HowManyFingers_Game
//
//  Created by Venkat Kotu on 2/6/16.
//  Copyright © 2016 VenkatKotu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultText: UILabel!
    
    @IBOutlet weak var inputNo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func checkRandNo(sender: AnyObject) {
        
        //print(inputNo.text!)
        
        let inpNo = Int(inputNo.text!)
        if inpNo != nil {
            let randNoGen = arc4random_uniform(10)
            if inpNo == Int(randNoGen) {
                resultText.text = "Your guess is correct"
            }else {
                resultText.text = "Sorry it is \(randNoGen)"
            }
        }else {
            resultText.text = "Please enter a numeric value"
        }
        
        
    }

}

