//
//  CreationViewController.swift
//  Lab1
//
//  Created by Nelson Dufitimana on 12/03/2022.
//

import UIKit

class CreationViewController: UIViewController {
    var flashcardsController: ViewController!

    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var ExtraAnswer1: UITextField!
    @IBOutlet weak var ExtraAnswer2: UITextField!
    
    var initialQuestion: String?
    var initialAnswer: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
    }
    

    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        //get values from the question and answer text field
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        let extra1 = ExtraAnswer1.text
        let extra2 = ExtraAnswer2.text
        
        let alert = UIAlertController(title: "Missing text", message: "You need to have a question and an answer.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty{

            present(alert, animated: true)
           
        }else{
            //update flashcards
            flashcardsController.updateFlashcard(question: questionText!, answer: answerText!, extraAnswer1: extra1, extraAnswer2: extra2)
            
            dismiss(animated: true)
        }
        
        
    }

}
