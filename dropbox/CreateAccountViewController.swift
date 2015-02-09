//
//  CreateAccountViewController.swift
//  dropbox
//
//  Created by Don Okuda on 2/7/15.
//  Copyright (c) 2015 Don Okuda. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var passwordHintText: UILabel!
    @IBOutlet weak var passwordHintView: UIView!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var goodPassIndicator: UIView!
    @IBOutlet weak var greatPassIndicator: UIView!
    @IBOutlet weak var okPassIndicator: UIView!
    @IBOutlet weak var weakPassIndicator: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButton.enabled = false
        passwordHintView.hidden = true
        goodPassIndicator.hidden = true
        greatPassIndicator.hidden = true
        okPassIndicator.hidden = true
        weakPassIndicator.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backButtonTapped(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    
    @IBAction func onPasswordEdit(sender: AnyObject) {
        let weakColor = UIColor(red: 0.937, green: 0, blue: 0.071, alpha: 1)
        let okColor = UIColor(red: 0.957, green: 0.463, blue: 0.102, alpha: 1)
        let goodColor = UIColor(red: 0.988, green: 0.761, blue: 0.043, alpha: 1)
        let greatColor = UIColor(red: 0.098, green: 0.722, blue: 0.02, alpha: 1)
        
        switch passwordField.text.utf16Count {
        case 0:
            goodPassIndicator.hidden = true
            greatPassIndicator.hidden = true
            okPassIndicator.hidden = true
            weakPassIndicator.hidden = true
            
            passwordHintView.hidden = true
        case 1...4:
            weakPassIndicator.hidden = false
            okPassIndicator.hidden = true
            goodPassIndicator.hidden = true
            greatPassIndicator.hidden = true
            
            passwordHintView.hidden = false
            
            weakPassIndicator.backgroundColor = weakColor
            passwordHintText.textColor = weakColor
            passwordHintText.text = "Weak"
        case 5...8:
            weakPassIndicator.hidden = false
            okPassIndicator.hidden = false
            goodPassIndicator.hidden = true
            greatPassIndicator.hidden = true
            
            okPassIndicator.backgroundColor = okColor
            passwordHintText.textColor = okColor
            passwordHintText.text = "So-So"
        case 9...12:
            weakPassIndicator.hidden = false
            okPassIndicator.hidden = false
            goodPassIndicator.hidden = false
            greatPassIndicator.hidden = true
            
            goodPassIndicator.backgroundColor = goodColor
            passwordHintText.textColor = goodColor
            passwordHintText.text = "Good"
        default:
            weakPassIndicator.hidden = false
            okPassIndicator.hidden = false
            goodPassIndicator.hidden = false
            greatPassIndicator.hidden = false
            
            greatPassIndicator.backgroundColor = greatColor
            passwordHintText.textColor = greatColor
            passwordHintText.text = "Great!"
        }
        
        checkFields()
    }
    
    
    @IBAction func onFieldEdit(sender: AnyObject) {
        checkFields()
    }
    
    func checkFields() {
        if (passwordField.text.isEmpty ||
            firstNameField.text.isEmpty ||
            lastNameField.text.isEmpty ||
            emailField.text.isEmpty) {
                createButton.enabled = false
        } else {
            createButton.enabled = true
        }
    }
    @IBAction func dismissKeyboard(sender: AnyObject) {
        self.view.endEditing(true)
    }
}
