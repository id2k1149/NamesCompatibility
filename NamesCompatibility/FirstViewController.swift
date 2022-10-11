//
//  ViewController.swift
//  NamesCompatibility
//
//  Created by Max Franz Immelmann on 10/11/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var yourNameTF: UITextField!
    
    @IBOutlet weak var partnerNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partnerNameTF.text
    }

    @IBAction func resultButtonTapped() {
    }
    
}

