//
//  ViewController.swift
//  Easy 2
//
//  Created by iMac_13 on 6/23/2559 BE.
//  Copyright © 2559 iMac_13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButton(sender: AnyObject) {
        
        let user = userTextField.text
        let password = passwordTextField.text
        
        print("user ==> \(user)")
        print("password ==>\(password)")
        checkSpace(user!, strPass: password!)
    }//login Button
    
    func checkSpace(strUser:String, strPass:String) -> Void
    {
    
        if ((strUser.isEmpty) || (strPass.isEmpty)) {
            
            print("Have Space")
            
            myAlertDialog("Have Space", strMessage: "Please Fill All Bank")
            
            
            
            
        } else {
            var trueUser = ["test1","test2","test3"]
            var truePassword = ["123","456","789"]
            var index = 0
            var status = false
            var myTruePass = ""
            
            
            for myFor in trueUser {
                if (strUser == myFor) {
                    status = true
                    myTruePass = truePassword[index]
                    
                }//if
                index += 1
                
            }//for
            
            if status {
                if (strPass == myTruePass) {
                    print("Welcome")
                    myAlertDialog("Welcome", strMessage: "Hello \(strUser) ")
                    
                }else{
                    
                    myAlertDialog("Password False", strMessage: "Please Try Again Password False")
                    
                }
            }else{
                myAlertDialog("Not Have User This", strMessage: "Not Have \(strUser)  In Our Database")
            
            }
            
        }
        
    }
    
    func myAlertDialog(strTit:String, strMessage:String) -> Void {
        //Alert Dialog
        let myAlert = UIAlertController(title: strTit ,message: strMessage ,preferredStyle: UIAlertControllerStyle.Alert)
        myAlert.addAction(UIAlertAction(title:"OK",style: UIAlertActionStyle.Default,handler:nil))
        self.presentViewController(myAlert, animated: true, completion: nil)
    
    }//Alert func
    
}//class

