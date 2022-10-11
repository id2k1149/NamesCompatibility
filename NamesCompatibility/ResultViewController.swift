//
//  ResultViewController.swift
//  NamesCompatibility
//
//  Created by Max Franz Immelmann on 10/11/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var namesLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    var firstName: String!
    var secondName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        namesLabel.text = "\(firstName ?? "") and \(secondName ?? "" )"
    }
    

    

}
