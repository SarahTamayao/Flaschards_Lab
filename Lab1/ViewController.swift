//
//  ViewController.swift
//  Lab1
//
//  Created by Nelson Dufitimana on 26/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FrontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        FrontLabel.isHidden = true
    }
    
}

