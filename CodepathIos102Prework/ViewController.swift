//
//  ViewController.swift
//  CodepathIos102Prework
//
//  Created by Omar Madjitov on 8/3/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!

    @IBOutlet weak var SchoolTextField: UITextField!
    
    @IBOutlet weak var SchoolYearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var NumberOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        NumberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = SchoolYearSegmentedControl.titleForSegment(
            at: SchoolYearSegmentedControl.selectedSegmentIndex
        )

        
        let introduction = "Hello, my Name is \(FirstNameTextField.text!) \(LastNameTextField.text!) an I attend \(SchoolTextField.text!). I'm currently in my \(year!) year, and I own \(NumberOfPetsLabel.text!) pets. it is \(MorePetsSwitch.isOn) that I want more pets."
        
//        print(introduction)
        
        let alerController = UIAlertController(
            title:"Nice to Meet you!",
            message: introduction, preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title:"Nice to meet you!",
            style:.default,
            handler: nil
        )
        
        alerController.addAction(action)
        
        present(alerController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

