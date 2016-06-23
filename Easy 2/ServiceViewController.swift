//
//  ServiceViewController.swift
//  Easy 2
//
//  Created by iMac12 on 6/23/2559 BE.
//  Copyright © 2559 iMac_13. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {
    
    
    @IBOutlet weak var ishiharaImageView: UIImageView!

    @IBOutlet weak var answerTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }   //viewDi

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   //didReceive
    
    
    @IBAction func answerButton(sender: AnyObject) {
        
        let strAnswer = answerTextField.text
        
        print("strAnswer ==>\(strAnswer)")
        
        
        
    }//answer Button
    
    
    
    

    }
