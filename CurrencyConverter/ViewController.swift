//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Onur Başdaş on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func getRatesClicked(_ sender: Any) {
        //        1- Request & Session
        //        2- Response & Data
        //        3- Parsing & JSON Serialization
        
        
        //1.
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=01e970b74936e9ba92b6bd3b1b392341")
        let session = URLSession.shared
        //Closure
        let task = session.dataTask(with: url!) { (data, response, error) in
            if error != nil{
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }else{
                //2.
                if data != nil{
                    
                }
            }
        }
        
        
        
    }
    
}

