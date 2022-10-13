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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partnerNameTF.text
    }

    @IBAction func resultButtonTapped() {
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        yourNameTF.text = ""
        partnerNameTF.text = ""
    }
    
}

// add alert
extension FirstViewController {
    private func showAlert(title: String, message: String) {
        // object of class UIAlertController
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // add button to close alert
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        // to show alert
        present(alert, animated: true)
    }
}


// add keyboard to screen
extension FirstViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        if textField == yourNameTF {
            partnerNameTF.becomeFirstResponder()
        } else {
            resultButtonTapped()
        }
        return true
    }
}
 

