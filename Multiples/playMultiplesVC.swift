//
//  playMultiplesVC.swift
//  Multiples
//
//  Created by Sharon's Mac on 6/7/16.
//  Copyright © 2016 Sharon's Mac. All rights reserved.
//

import Foundation

import UIKit

class playMultiplesVC: UIViewController, UITextFieldDelegate {
    
    //Properties
    var numberInputByUser: Int = 0
    var currentInput: Int = 0
    var newCurrentInput: Int = 0
    var timesAddButtonPressed: Int = 0
    
    //Outlets
    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var whatMultipleTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var pressAddToAddLbl: UILabel!
    @IBOutlet weak var multiplierLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        titleImg.hidden = false
        whatMultipleTxt.hidden = false
        playBtn.hidden = false
        pressAddToAddLbl.hidden = true
        multiplierLbl.hidden = true
      
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard()  {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.


    }
    @IBAction func whatMultipleTxt(sender: UIView) {
            //playBtn.hidden = true
    
    }    
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if whatMultipleTxt.text != nil && whatMultipleTxt.text != "" {
            
            whatMultipleTxt.resignFirstResponder()
            
            numberInputByUser = Int(whatMultipleTxt.text!)!
            currentInput = 0
            
            titleImg.hidden = true
            whatMultipleTxt.hidden = true
            pressAddToAddLbl.hidden = false
            multiplierLbl.hidden = true
            playBtn.hidden = true
            addBtn.hidden = false
            
    }
        
}
    @IBAction func onAddBtnPressed(sender: UIButton) {
        pressAddToAddLbl.hidden = true
        multiplierLbl.hidden = false
        addBtn.hidden = false
        

            newCurrentInput += numberInputByUser

        
        numberInputByUser = Int(whatMultipleTxt.text!)!
        //currentInput = 0
        //timesAddButtonPressed += 1
        newCurrentInput += (numberInputByUser * timesAddButtonPressed)
        
        
        multiplierLbl.text = "\(currentInput) + \(numberInputByUser) = \(newCurrentInput)"
        currentInput = Int(newCurrentInput)
        
        //updateMultiplierLbl()
 /*
    }
    func showAlert(title: String) {
        let title: String
        if newCurrentInput = 0...49 && 61...99 && 111...129 && 141...159 && 171...199 {
            return nil
        } else if newCurrentInput >= 50 && <= 60 {
            title = "Hey, looks like you are into this!"
        } else if newCurrentInput >= 100 && <= 110 {
            title = "Are you sure you want to keep going?"
        } else if newCurrentInput >= 130 && <= 140 {
            title = "You know there is no prize for hitting the ADD button, right?"
        } else if newCurrentInput >= 160 && <= 170 {
            title = "OK, you can stop now. The game is over!"
        } else if newCurrentInput >= 200 {
            title = "Game Over"
    }
}
    
    let alert = UIAlertController (title: title, message: message,
                                  preferredStyle: .Alert)
    
    
    let action = UIAlertAction(title: "OK", style: .Default,
                               handler: { action in
                                self.updateLabels()
    })
    
    alert.addAction(action)
    
    presentViewController(alert, animated: true, completion: nil)
*/
}

        //what this is doing is grabbing the global variable: numberInputByUser from the properties, it's grabbing the text out of it and putting it into an integer variable
        //text may or may not have a value
        // numberInput is not set to what was input in the text field
        
        
        //this is how we inject our current variable into our string.
            //newCurrentInput.text: Int = (newCurrentInput + numberInputByUser)
            //currentInput = Int(newNumber)
        
        
        //whatMultipleTxt.text = ""
        
        //multiplierLbl() {
            //currentInput + numberInput = newCurrentInput: Int
    
    


        //newCurrentInput = (currentInput + numberInputByUser)
        //currentInput = newCurrentInput

        func restartGame() {
            
            //numberInputByUser = 0
            
            //titleImg.hidden = false
            //whatMultipleTxt.text = true
            //whatMultipleTxt.hidden = false
            //playBtn.hidden = false
            //pressAddToAddLbl.hidden = true
            //multiplierLbl.hidden = true
            //addBtn.hidden = true
            
}

/*
        func isGameOver() -> Bool {
            if newCurrentInput >= 1000000 {
            return true
            multiplierLbl.text = "GAME OVER"
            } else {
            return false
    }
}
*/
/*
        func updateMultiplierLbl() {
            multiplierLbl.text = "\(currentInput) + \(numberInputByUser) = \(newCurrentInput)"
            currentInput = newCurrentInput

    }
*/





        //maxInput = Int(whatMultipleTxt.text!)!
        //currentInput = 0

    
    // need to make keyboard dissapear when the user clicks "Done" button





}