//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Jazmin on 04/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    let urlString = "http://data.fixer.io/api/latest?access_key=7acb3f0a6a9caa6d9c6e7d63bc400f27"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesClicked(_ sender: UIButton) {
        // 1) Request & Session
        // 2) Respons & Data
        // 3) Parsing & JSON Serialization
        
        // 1.
        let url = URL(string: urlString)
        
        let session = URLSession.shared
        //Closure
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            } else {
                // 2.
                if data != nil {
                    
                }
            }
        }
        
    }
    
}

