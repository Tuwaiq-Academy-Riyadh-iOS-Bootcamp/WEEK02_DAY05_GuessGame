//
//  ViewController.swift
//  GuessGame
//
//  Created by user on 10/21/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbMessage: UILabel!
    
    @IBOutlet weak var ivImage: UIImageView!
    
    @IBOutlet weak var tfNumber: UITextField!
    
    var number = Int.random(in: 0...100)
    
    @IBAction func checkGuess(_ sender: UIButton) {
        var guess = Int(tfNumber.text!)!
        
        if guess > number {
            lbMessage.text = "Go Down"
        }
        else if guess < number {
            lbMessage.text = "Go Up"
        }
        else {
            lbMessage.text = "You Guessed Right!!"
            ivImage.image = UIImage(named: "happy")
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

