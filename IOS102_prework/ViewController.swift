//
//  ViewController.swift
//  IOS102_prework
//
//  Created by Chido Chimbetete on 12/30/22.
//

import UIKit

class ViewController: UIViewController {
    let darkModeCheck = UIColor(red: 128/255, green: 203/255, blue: 196/255, alpha: 1.0)

    @IBOutlet weak var darkModeButton: UIButton!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var petsLabel: UILabel!
    @IBOutlet weak var morePetsLabel: UILabel!
    //Additional info
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var majorTextField: UITextField!
    @IBOutlet weak var gpaLabel: UILabel!
    @IBOutlet weak var gpaNumberLabel: UILabel!
    @IBOutlet weak var gpaStepper: UIStepper!
    
    @IBAction func IntroduceSelfDidTapped(_ sender: UIButton) {
        //skip first or lst name
        if (firstNameTextField.text == "" || lastNameTextField.text == "") {
                    let alertController = UIAlertController(title: "Missing Info", message: "Type your full name", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alertController.addAction(action)
                    present(alertController, animated: true, completion: nil)
                }
                // skip school name
                if (schoolNameTextField.text == "") {
                    let alertController = UIAlertController(title: "Missing Info", message: "What is your school name?", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alertController.addAction(action)
                    present(alertController, animated: true, completion: nil)
                }
                // skip major
                if (majorTextField.text == "") {
                    let alertController = UIAlertController(title: "Missing Info", message: "What is your major?", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alertController.addAction(action)
                    present(alertController, animated: true, completion: nil)
                }
        // Lets us choose the title we have selected from the segmented control
                // In our example that is whether it is first, second, third or forth
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
                
                // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "\nHey!, I'm \(firstNameTextField.text!) \(lastNameTextField.text!) \nand I attend \(schoolNameTextField.text!).I am currently in my \(year!) year majoring in \(majorTextField.text!) with an overall gpa of \(gpaNumberLabel.text!)\n\n I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
                
               // Creates the alert where we pass in our message, which our introduction.
               let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
               let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
               // Passing this action to the alert controller so it can be dismissed
               alertController.addAction(action)
               
               present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func darkModeDidTap(_ sender: Any) {
            if (view.backgroundColor == UIColor.white) {
                view.backgroundColor = darkModeCheck
                textDarkMode()
            } else {
                view.backgroundColor = UIColor.white
                textWhiteMode()
            }
        }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    //Load the view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        darkModeButton.layer.cornerRadius = 12

    }
    @IBAction func gpaStepper(_ sender: UIStepper) {
        
        gpaNumberLabel.text = "\(Float(sender.value/10))"
    }
    
    func textDarkMode() {
           firstNameLabel.textColor = UIColor.white
           lastNameLabel.textColor = UIColor.white
           schoolLabel.textColor = UIColor.white
           petsLabel.textColor = UIColor.white
           numberOfPetsLabel.textColor = UIColor.white
           morePetsLabel.textColor = UIColor.white
           majorLabel.textColor = UIColor.white
           gpaLabel.textColor = UIColor.white
           gpaNumberLabel.textColor = UIColor.white
       }
       
       func textWhiteMode() {
           firstNameLabel.textColor = UIColor.black
           lastNameLabel.textColor = UIColor.black
           schoolLabel.textColor = UIColor.black
           petsLabel.textColor = UIColor.black
           numberOfPetsLabel.textColor = UIColor.black
           morePetsLabel.textColor = UIColor.black
           majorLabel.textColor = UIColor.black
           gpaLabel.textColor = UIColor.black
           gpaNumberLabel.textColor = UIColor.black
           
       }

}

