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
    
    var myIndex = 0
    
    var score = 0
    
    
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
        
        var myImage = ["ishara_01.png","ishara_02.png","ishara_03.png","ishara_04.png","ishara_05.png",
                       "ishara_06.png","ishara_07.png","ishara_08.png","ishara_09.png","ishara_10.png",]
        
        
        var myTrueAnswer = [3,5,6,12,29,45,74,42,0,0]
        
        if (myIndex < 9 ) {
            
            myIndex += 1
            
        
        } else {
        
            myIndex = 0
        
        }
        
        ishiharaImageView.image = UIImage(named: myImage[myIndex])
        
        
        let intAnswer = Int(strAnswer!)
        print("intAnswer ==> \(intAnswer)")
        
        if (intAnswer == myTrueAnswer[myIndex]) {
            
            score += 1
            print("Score ==> \(score)")
            
            
        }
        
        
        
        
        
    }//answer Button
    
    
    
    

    }
