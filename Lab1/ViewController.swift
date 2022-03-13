//
//  ViewController.swift
//  Lab1
//
//  Created by Nelson Dufitimana on 26/02/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var FrontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 20.0
        
        FrontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        
        FrontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        
        btnOptionOne.layer.cornerRadius = 20.0
        btnOptionTwo.layer.cornerRadius = 20.0
        btnOptionThree.layer.cornerRadius = 20.0
        
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionThree.layer.borderWidth = 3.0
        
        btnOptionOne.layer.borderColor = UIColor.lightGray.cgColor
        btnOptionTwo.layer.borderColor = UIColor.lightGray.cgColor
        btnOptionThree.layer.borderColor = UIColor.lightGray.cgColor
        
        
        

    }
    

    
    @IBAction func didTapOn1(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOn2(_ sender: Any) {
        FrontLabel.isHidden = true
    }
    
    @IBAction func didTapOn3(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if FrontLabel.isHidden==true{
            FrontLabel.isHidden = false
            
        }
        else{
            FrontLabel.isHidden=true
        }
        
    }
    func updateFlashcard(question:String, answer:String, extraAnswer1: String?, extraAnswer2: String?) {
        FrontLabel.text=question
        backLabel.text=answer
        
        btnOptionOne.setTitle(extraAnswer1, for: .normal)
        btnOptionTwo.setTitle(answer, for: .normal)
        btnOptionThree.setTitle(extraAnswer2, for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        if segue.identifier == "EditSegue"{
            
            creationController.initialQuestion = FrontLabel.text
            creationController.initialAnswer = backLabel.text
        }
        creationController.flashcardsController = self
        
    }
    
}

