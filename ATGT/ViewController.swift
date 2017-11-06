//
//  ViewController.swift
//  ATGT
//
//  Created by Vu Duc Chung on 06/11/2017.
//  Copyright © 2017 HidolPla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lableName: UILabel!
    @IBAction func setLable(_ sender: Any) {
        lableName.text = "HHEY GIRL!!!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

