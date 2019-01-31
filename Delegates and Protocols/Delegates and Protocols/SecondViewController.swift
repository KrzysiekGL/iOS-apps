//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by Krzysztof Szczerbowski on 04/09/2018.
//  Copyright © 2018 Krzysztof Szczerbowski. All rights reserved.
//

import UIKit

protocol CanRecive {
    func dataRecived(data: String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanRecive?
    
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        delegate?.dataRecived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
